//
//  Camera.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/06.
//

import SwiftUI
import AVFoundation

struct Camera: View {
    var body: some View {
        
        CameraView()
    }
}

struct Camera_Previews: PreviewProvider {
    static var previews: some View {
        Camera()
    }
}

struct CameraView: View {
    @StateObject var camera = CameraModel()
    var body: some View {
        ZStack {
            CameraPreview(camera: camera)
                // .ignoresSafeArea(edges: .bottom)
            VStack {
                if camera.isTaken {
                    HStack {
                        Spacer()
                        Button(action: camera.reTake, label: {
                            Image(systemName: "arrow.triangle.2.circlepath.camera")
                                .foregroundColor(Color(red: 4.0 / 255, green: 158.0 / 255, blue: 84.0 / 255))
                                .padding()
                                .background(Color.white)
                                .clipShape(Circle())
                        })
                        .padding(.trailing, 10)
                    }
                }
                Spacer()
                HStack {
                    if camera.isTaken {
                        Button(action: {if !camera.isSaved {camera.savePic()}}, label: {
                            Text(camera.isSaved ? "인증완료" : "인증하기")
                                .foregroundColor(Color(red: 4.0 / 255, green: 158.0 / 255, blue: 84.0 / 255))
                                .fontWeight(.semibold)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 20)
                                .background(Color.white)
                                .clipShape(Capsule())
                        })
                        .padding(.leading)
                        Spacer()
                    }
                    else {
                        ZStack {
                            Rectangle()
                                .fill(.white)
                                .ignoresSafeArea(edges: .bottom)
                            Button(action: camera.takePic, label: {
                                ZStack {
                                    Circle()
                                        .fill(Color(red: 102.0 / 255, green: 210.0 / 255, blue: 157.0 / 255))
                                        .frame(width: 65, height: 65)
                                    Circle()
                                        .stroke(Color(red: 102.0 / 255, green: 210.0 / 255, blue: 157.0 / 255), lineWidth: 2)
                                        .frame(width: 75, height: 75)
                                }
                            })
                        }
                    }
                }
                .frame(height: 150)
            }
        }
        .onAppear(perform: {
            camera.Check()
        })
    }
}


//Camera Model...
class CameraModel: NSObject, ObservableObject, AVCapturePhotoCaptureDelegate {
    @Published var isTaken = false
    @Published var session = AVCaptureSession()
    @Published var alert = false
    @Published var output = AVCapturePhotoOutput()
    @Published var preview : AVCaptureVideoPreviewLayer!
    @Published var isSaved = false
    @Published var picData = Data(count: 0)
    
    func Check() {
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case .authorized:
            setUp()
            return
        case .notDetermined:
            AVCaptureDevice.requestAccess(for: .video) { (status) in
                if status {
                    self.setUp()
                }
            }
        case .denied:
            self.alert.toggle()
            return
            
        default:
            return
        }
    }
    
    func setUp() {
        do {
            self.session.beginConfiguration()
            // change for your own
            let device = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .back)
            let input = try AVCaptureDeviceInput(device: device!)
            if self.session.canAddInput(input) {
                self.session.addInput(input)
            }
            if self.session.canAddOutput(self.output) {
                self.session.addOutput(self.output)
            }
            self.session.commitConfiguration()
        }
        catch {
            print(error.localizedDescription)
        }
    }
    
    func takePic() {
        DispatchQueue.global(qos: .background).async {
            self.output.capturePhoto(with: AVCapturePhotoSettings(), delegate: self)
            self.session.stopRunning()
            
            DispatchQueue.main.async {
                withAnimation{self.isTaken.toggle()}
            }
        }
    }
    
    func reTake() {
        DispatchQueue.global(qos: .background).async {
            self.session.startRunning()
            DispatchQueue.main.async {
                withAnimation {self.isTaken.toggle()}
                // clearing ...
                self.isSaved = false
            }
        }
    }
    
    func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
        if error != nil {
            return
        }
        print("pic taken...")
        guard let imageData = photo.fileDataRepresentation() else {return}
        self.picData = imageData
    }
    
    func savePic() {
        let image = UIImage(data: self.picData)!
        // saving Image...
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        self.isSaved = true
        print("saved Successfully...")
    }
}

// setting view for preview...
struct CameraPreview: UIViewRepresentable {
    @ObservedObject var camera: CameraModel

    func makeUIView(context: Context) -> UIView {
    let view = UIView(frame: UIScreen.main.bounds)
        camera.preview = AVCaptureVideoPreviewLayer(session: camera.session)
        camera.preview.frame = view.frame
        // Your Own Properties...
        camera.preview.videoGravity = .resizeAspectFill
        view.layer.addSublayer(camera.preview)
        camera.session.startRunning()

        return view
    }
    func updateUIView(_ uiView: UIView, context: Context) {

    }
}
