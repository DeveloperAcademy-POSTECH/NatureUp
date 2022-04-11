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
                            Image(systemName: "crown.fill")
                                .foregroundColor(.yellow)
                                .font(.system(size: 30))
                            Image("user1")
                                .resizable()
                                .frame(width: 130, height: 130)
                                .clipShape(Circle())
                                .shadow(radius: 10)
                                .overlay(Circle().stroke(Color.gray, lineWidth: 4))
                            Image("userName1")
                                .resizable()
                                .frame(width: 150, height: 40, alignment: .center)
                        } // LazyVStack
                        
                        VStack {
                            HStack {
                                VStack {
                                    Image(systemName: "crown.fill")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 30))
                                    Image("user1")
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                        .clipShape(Circle())
                                        .shadow(radius: 10)
                                        .overlay(Circle().stroke(Color.gray, lineWidth: 4))
                                    Image("userName1")
                                        .resizable()
                                        .frame(width: 150, height: 40, alignment: .center)
                                }
                                
                                Spacer()
                                
                                VStack {
                                    Image(systemName: "crown.fill")
                                        .foregroundColor(.brown)
                                        .font(.system(size: 30))
                                    Image("user1")
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                        .clipShape(Circle())
                                        .shadow(radius: 10)
                                        .overlay(Circle().stroke(Color.gray, lineWidth: 4))
                                    Image("userName1")
                                        .resizable()
                                        .frame(width: 150, height: 40, alignment: .center)
                                }
                            } // HStack
                            .padding(.vertical, -40)
                        } // VStack
                        .padding()
                        Spacer()
                        LazyVStack(alignment: .center, spacing: 10) {
                            Spacer()
                                
                            }
                        
                } // ScrollView
                    Spacer()
                    LeaderBoardList()
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
