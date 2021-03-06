//
//  EvaluationView.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/11.
//

import SwiftUI

struct EvaluationView: View {
    @State var selection: Int? = nil
    @State var progress = 1.0
    let evaluation: [Evaluation]
    @State var currentNumber = 0
    let myId = "cVP4ck6CvPzRaOp4NE7c"
    
    @ObservedObject var model = PlayedActivityViewModel()
    @ObservedObject var userVM = UserViewModel()
    
    init(evaluation: [Evaluation]) {
        self.evaluation = evaluation
        model.getQueryData(userId: myId)
    }
    
    var body: some View {
        ZStack {
            Color("BackgroundGray")
            VStack {
                Text("활동에 맞는 올바른 사진인지 평가해주세요")
                    .font(.headline)
                HStack {
                    ProgressView(value: progress, total: 10)
                    Spacer()
                }
                .padding(5)
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(height: 30)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color("PrimaryGreen"), lineWidth: 1)
                        )
                
                    Text(model.list.count > currentNumber ?
                          model.list[currentNumber].name
                        : evaluation[currentNumber].name)
                        .font(.title3)
                        .foregroundColor(Color("PrimaryGreen"))
                }
                evaluation[currentNumber].image
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(5)
                HStack {
                    NavigationLink(
                        destination: EvaluationCompleteView(),
                        tag: 1,
                        selection: $selection)
                    {
                        Button(action: {
                            if progress < 10 {
                                progress += 1
                                currentNumber += 1
                            } else {
                                self.selection = 1
                                model.shuffleData()
                            }
                        }) {
                            ZStack {
                                Rectangle()
                                    .fill(.white)
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .cornerRadius(10)
                                Image(systemName: "xmark")
                                    .foregroundColor(.black)
                                    .font(.system(size: 30))
                            }
                        }
                    }
                    Spacer()
                    NavigationLink(
                        destination: EvaluationCompleteView(),
                        tag: 1,
                        selection: $selection)
                    {
                        Button(action: {
                            if progress < 10 {
                                progress += 1
                                currentNumber += 1
                            } else {
                                self.selection = 1
                                model.shuffleData()
                            }
                        }) {
                            ZStack {
                                Rectangle()
                                    .fill(Color(red: 102.0 / 255, green: 210.0 / 255, blue: 157.0 / 255))
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .cornerRadius(10)
                                Image(systemName: "checkmark")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                            }
                        }
                    }
                }
                .padding(.bottom)
            }
            .padding()
        }
        .ignoresSafeArea(.all, edges: .bottom)
        .navigationBarTitle("랜덤평가", displayMode:.inline)
    }
}

struct EvaluationView_Previews: PreviewProvider {
    static var previews: some View {
        EvaluationView(evaluation: evaluations)
    }
}
