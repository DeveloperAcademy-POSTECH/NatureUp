//
//  HomeView.swift
//  NatureUp
//
//  Created by Wonhyuk Choi on 2022/04/07.
//

import SwiftUI

struct HomeView: View {
    @State private var showingNotifications = false
    
    var body: some View {
        NavigationView{
            ZStack {
                Color("BackgroundGray")
                VStack {
                    MyStatus()
                        .frame(height: 80)
                        .navigationBarTitle("Home", displayMode: .inline)
                        .toolbar {
                            Button {
                                showingNotifications.toggle()
                            } label: {
                                Label("Notifications", systemImage: "bell.badge")
                            }
                            .accentColor(Color("PrimaryGreen"))
                    }
                    ScrollView {
                        ActivityList(location: "당신이 있는 건물 내")
                        ActivityList(location: "창문 밖으로 보이는 바로 그 곳")
                        HStack {
                            Spacer()
                            Text("반경 20m내 오차범위가 있을 수 있습니다.")
                                .font(.footnote)
                                .fontWeight(.light)
                                .foregroundColor(Color.gray)
                                .padding()
                        }
                    }
                    Button(action: {
                            print("sign up bin tapped")
                    }) {
                        Text("랜덤평가 진행하기")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(.system(size: 18))
                            .padding()
                            .foregroundColor(.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("PrimaryGreen"), lineWidth: 2)
                            )
                    }
                    .background(Color("SecondGreen"))
                    .cornerRadius(10)
                    .padding()
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
