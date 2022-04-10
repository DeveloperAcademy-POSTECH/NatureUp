//
//  LeaderBoardView.swift
//  NatureUp
//
//  Created by Shin yongjun on 2022/04/08.
//

import SwiftUI

struct LeaderBoardView: View {
    
    var body: some View {
        ZStack {
            Color("BackgroundGray")
                VStack {
                    MyLeaderBoardStatus()
                    ScrollView {
                        
                        LazyVStack(alignment: .center) {
                            Image("no1")
                                .resizable()
                                .frame(width: 40, height: 40, alignment: .center)
                            Image("user1")
                                .resizable()
                                .frame(width: 130, height: 130)
                                .clipShape(Circle())
                                .shadow(radius: 10)
                                .overlay(Circle().stroke(Color.gray, lineWidth: 7))
                            Image("userName1")
                                .resizable()
                                .frame(width: 150, height: 40, alignment: .center)
                        } // LazyVStack
                        
                        
                        HStack() {
                            VStack {
                                Image("no2")
                                    .resizable()
                                    .frame(width: 40, height: 40, alignment: .center)
                                Image("user1")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .clipShape(Circle())
                                    .shadow(radius: 10)
                                    .overlay(Circle().stroke(Color.gray, lineWidth: 7))
                                Image("userName1")
                                    .resizable()
                                    .frame(width: 150, height: 40, alignment: .center)
                            }
                            
                            Spacer()
                            
                            VStack {
                                Image("no3")
                                    .resizable()
                                    .frame(width: 40, height: 40, alignment: .center)
                                Image("user1")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .clipShape(Circle())
                                    .shadow(radius: 10)
                                    .overlay(Circle().stroke(Color.gray, lineWidth: 7))
                                Image("userName1")
                                    .resizable()
                                    .frame(width: 150, height: 40, alignment: .center)
                            }
                        } // HStack
                        .padding(.vertical, -15)
                        Spacer()
                        LazyVStack(alignment: .center, spacing: 1) {
                                LeaderBoardRow()
                            
                        }
                        
                } // ScrollView
                    Spacer()
            } // VStack
        } // ZStack
    }
}

struct LeaderBoardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderBoardView()
    }
}
