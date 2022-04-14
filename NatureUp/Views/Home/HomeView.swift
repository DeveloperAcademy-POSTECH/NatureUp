//
//  HomeView.swift
//  NatureUp
//
//  Created by Wonhyuk Choi on 2022/04/07.
//

import SwiftUI
import MapKit

struct HomeView: View {
    
    // TODO: 1. 자기위치 가져오기
    // TODO: 2. 자기위치와 가장 가까운 핀 2개 찾기
    // TODO: 3. 가까운 핀 2개의 타입이 서로 다르면 출력
    // TODO: 4. 같으면 다를때까지 찾고 출력
    
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
