//
//  AuthenticationView.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/07.
//

import SwiftUI

struct AuthenticationView: View {
    @State private var capturedImage: UIImage? = nil
    @State private var isCustomCameraViewPresented = false
    
    var body: some View {
        ZStack {
            if capturedImage != nil {
                ZStack {
                    Image(uiImage: capturedImage!)
                        .resizable()
                        .scaledToFill()
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
                            .sheet(isPresented: $isCustomCameraViewPresented, content: {
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
            VStack {
                Spacer()
                ZStack {
                    Rectangle()
                        .fill(.white)
                        .frame(height: 150)
                    if capturedImage != nil {
                        NavigationLink(destination: AuthenticationSuccessView()) {
                            Text("인증하기")
                                .foregroundColor(Color(red: 4.0 / 255, green: 158.0 / 255, blue: 84.0 / 255))
                                .font(.title3)
                                .fontWeight(.semibold)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 20)
                                .background(Color.white)
                                .clipShape(Capsule())
                        }
                    } else { Button(action: {
                        isCustomCameraViewPresented.toggle()
                    }, label: {
                        Image(systemName: "camera.fill")
                            .font(.largeTitle)
                            .padding()
                            .background(Color("SecondGreen"))
                            .foregroundColor(.white)
                            .clipShape(Circle())
                    })
                    .padding(.bottom)
                    .sheet(isPresented: $isCustomCameraViewPresented, content: {
                        CustomCameraView(capturedImage: $capturedImage)
                    })
                    }
                }
            }
        }
        .navigationBarTitle("활동 인증하기", displayMode:.inline)
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView()
    }
}
