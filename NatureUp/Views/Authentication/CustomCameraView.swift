//
//  CustomCameraView.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/07.
//

import SwiftUI

struct CustomCameraView: View {
    let cameraService = CameraService()
    @Binding var capturedImage: UIImage?
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        ZStack {
            CameraView(cameraService: cameraService) { result in
                switch result {
                case .success(let photo):
                    if let data = photo.fileDataRepresentation() {
                        capturedImage = UIImage(data: data)
                        presentationMode.wrappedValue.dismiss()
                    } else {
                        print("Error: no image data found")
                    }
                case .failure(let err):
                    print(err.localizedDescription)
                }
            }
            VStack {
                Spacer()
                ZStack {
                    Rectangle()
                        .fill(.white)
                        .frame(height: UIScreen.CscreenHeight/4.5)
                    Button(action: {
                        cameraService.capturePhoto()
                    }, label: {
                        ZStack {
                            Circle()
                                .fill(Color(red: 102.0 / 255, green: 210.0 / 255, blue: 157.0 / 255))
                                .frame(width: 65, height: 65)
                            Circle()
                                .stroke(Color(red: 102.0 / 255, green: 210.0 / 255, blue: 157.0 / 255), lineWidth: 2)
                                .frame(width: 75, height: 75)
                        }
                    })
                    .padding(.bottom)
                }
            }
            .ignoresSafeArea(edges: .bottom)
        }
    }
}

extension UIScreen{
    static let CscreenWidth = UIScreen.main.bounds.size.width
    static let CscreenHeight = UIScreen.main.bounds.size.height
    static let CscreenSize = UIScreen.main.bounds.size
}
