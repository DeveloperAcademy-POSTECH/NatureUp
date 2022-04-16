//
//  AuthenticationView.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/11.
//

import SwiftUI

struct AuthenticationView: View {
    @State private var capturedImage: UIImage? = nil
    @State private var isCustomCameraViewPresented = false
    @State var selection: Int? = nil
    
    var body: some View {
        VStack {
            VStack {
                ZStack {
                    if capturedImage != nil {
                        ZStack {
                            Color("BackgroundGray")
                            Image(uiImage: capturedImage!)
                                .resizable()
                                .clipShape(Rectangle())
                            VStack {
                                HStack {
                                    Button(action: {
                                        isCustomCameraViewPresented.toggle()
                                    }, label: {
                                        Text("다시 찍기")
                                            .foregroundColor(Color(red: 4.0 / 255, green: 158.0 / 255, blue: 84.0 / 255))
                                            .fontWeight(.semibold)
                                            .padding(.vertical, 10)
                                            .padding(.horizontal, 20)
                                            .background(Color.white)
                                            .clipShape(Capsule())
                                    })
                                    .padding(.trailing)
                                    .fullScreenCover(isPresented: $isCustomCameraViewPresented, content: {
                                        CustomCameraView(capturedImage: $capturedImage)
                                    })
                                    Spacer()
                                }
                                .padding()
                                Spacer()
                            }
                        }
                    } else {
                        ZStack {
                            Color("BackgroundGray")
                            VStack {
                                Spacer()
                                Text("아래 버튼을 눌러주세요")
                                    .font(.title2)
                                    .fontWeight(.black)
                                    .foregroundColor(Color("PrimaryGreen"))
                                    .padding()
                                Text("원활한 평가를 위해")
                                    .font(.body)
                                    .foregroundColor(Color("PrimaryGreen"))
                                    .opacity(0.8)
                                Text("활동과 관련된 사진을 촬영해주세요")
                                    .font(.body)
                                    .foregroundColor(Color("PrimaryGreen"))
                                    .opacity(0.8)
                                Spacer()
                            }
                        }
                    }
                }
            }
            VStack {
                ZStack {
                    Rectangle()
                        .fill(.white)
                    if capturedImage != nil {
                        NavigationLink(destination: AuthenticationSuccessView())
                        {
                            Text("인증하기")
                                .foregroundColor(Color(red: 4.0 / 255, green: 158.0 / 255, blue: 84.0 / 255))
                                .font(.title3)
                                .fontWeight(.bold)
                        }
                    } else {
                        Button(action: {
                            isCustomCameraViewPresented.toggle()
                        }) {
                            Image(systemName: "camera.fill")
                                .font(.largeTitle)
                                .padding()
                                .background(Color("SecondGreen"))
                                .foregroundColor(.white)
                                .clipShape(Circle())
                        }
                        .fullScreenCover(isPresented: $isCustomCameraViewPresented, content: {
                            CustomCameraView(capturedImage: $capturedImage)
                        })
                    }
                }
            }
            .frame(height: UIScreen.AscreenHeight/6)
        }
        .navigationBarTitle("활동 인증하기", displayMode:.inline)
    }
}

extension UIScreen{
    static let AscreenWidth = UIScreen.main.bounds.size.width
    static let AscreenHeight = UIScreen.main.bounds.size.height
    static let AscreenSize = UIScreen.main.bounds.size
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView()
    }
}
