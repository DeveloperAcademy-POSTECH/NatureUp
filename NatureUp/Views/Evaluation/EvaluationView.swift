//
//  EvaluationView.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/08.
//

import SwiftUI

struct EvaluationView: View {
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
                    ProgressView(value: 0.1)
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
                    Button(action: {}, label: {
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
                    Spacer()
                    Button(action: {}, label: {
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
            .padding()
        }
        .navigationBarTitle("활동 인증하기", displayMode:.inline)
        .accentColor(Color("PrimaryGreen"))
    }
}

struct EvaluationView_Previews: PreviewProvider {
    static var previews: some View {
        EvaluationView()
    }
}
