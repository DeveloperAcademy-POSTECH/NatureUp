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
            // Going to Be Camera preview...
            Color.black
                .ignoresSafeArea(.all, edges: .all)
            VStack {
                if camera.isTaken {
                    HStack {
                        Spacer()
                        Button(action: {}, label: {
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
                    // if taken showing save and again take button...
                    if camera.isTaken {
                        Button(action: {}, label: {
                            Text("인증하기")
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
                        Button(action: {camera.isTaken.toggle()}, label: {
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
                .frame(height: 75)
            }
        }
    }
}


//Camera Model...
class CameraModel: ObservableObject {
    @Published var isTaken = false
    @Published var session = AVCaptureSession()
    func Check() {
        // first checking camerahas got permission...
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case .authorized:
            break
            // Setting Up Session
        default:
            break
        }
    }
}
