//
//  HomeView.swift
//  NatureUp
//
//  Created by Wonhyuk Choi on 2022/04/07.
//

import SwiftUI

struct HomeView: View {    
    var body: some View {
        ZStack {
            Color("BackgroundGray")
            VStack {
                MyStatus()
                ScrollView {
                    ActivityList(location: "ocean")
                    ActivityList(location: "building")
                    HStack {
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("반경 20m내 오차범위가 있을 수 있습니다.")
                                .font(.footnote)
                                .fontWeight(.light)
                                .foregroundColor(Color.gray)
                            NavigationLink {
                                MapView(location: locations)
                            } label: {
                                Text("지도 보기")
                            }
                        }
                        .padding()
                    }
                }
                NavigationLink(
                    destination: EvaluationView(evaluation: evaluations)
                ) {
                    Text("랜덤평가 진행하기")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .font(.system(size: 18))
                        .padding()
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.white, lineWidth: 0)
                        )
                        .background(Color("SecondGreen"))
                        .cornerRadius(10)
                        .padding()
                }
                .isDetailLink(false)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
