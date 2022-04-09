//
//  EvaluationView.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/08.
//

import SwiftUI

struct EvaluationView: View {
    @State var selection: Int? = nil
    @State var progress = 1.0
    
    var body: some View {
        ZStack {
            Color("BackgroundGray")
            VStack {
                Text("다른 사람 평가하기")
                    .font(.title)
                    .padding(1)
                Text("활동에 맞는 올바른 사진인지 평가해주세요")
                    .font(.body)
                    .padding(.bottom)
                HStack {
                    ProgressView(value: progress, total: 10)
                    Spacer()
                }
                .padding()
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(height: 50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color("PrimaryGreen"), lineWidth: 1)
                        )
                    
                    Text("쓰레기 분리수거하기")
                        .font(.title2)
                        .foregroundColor(Color("PrimaryGreen"))
                }
                Rectangle()
                    .frame(height: 400)
                    .cornerRadius(10)
                HStack {
                    NavigationLink(destination: EvaluationCompleteView()) {
                        Button(action: {
                            if progress < 10 {
                                progress += 1
                            } else {
                                self.selection = 1
                            }
                        }, label: {
                            ZStack {
                                Rectangle()
                                    .fill(.white)
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .cornerRadius(10)
                                Image(systemName: "xmark")
                                    .foregroundColor(.black)
                                    .font(.system(size: 30))
                            }
                        })
                    }
                    Spacer()
                    NavigationLink(destination: EvaluationCompleteView(), tag: 1, selection: $selection) {
                        Button(action: {
                            if progress < 10 {
                                progress += 1
                            } else {
                                self.selection = 1
                            }
                        }, label: {
                            ZStack {
                                Rectangle()
                                    .fill(Color(red: 102.0 / 255, green: 210.0 / 255, blue: 157.0 / 255))
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .cornerRadius(10)
                                Image(systemName: "checkmark")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                            }
                        })
                    }
                }
            }
            .padding()
        }
        .navigationBarTitle("랜덤평가", displayMode:.inline)
        .accentColor(Color("PrimaryGreen"))
    }
}

struct EvaluationView_Previews: PreviewProvider {
    static var previews: some View {
        EvaluationView()
    }
}
