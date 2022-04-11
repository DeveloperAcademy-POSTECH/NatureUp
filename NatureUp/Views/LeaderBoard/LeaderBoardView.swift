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
                    HStack {
                        VStack(alignment: .center) {
                            Spacer()
                            Image(systemName: "crown.fill")
                                .foregroundColor(.gray)
                                .font(.system(size: 30))
                            Image("user1")
                                .resizable()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                                .shadow(radius: 10)
                                .overlay(Circle().stroke(Color.gray, lineWidth: 4))
                            Image("userName1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        .frame(width: 110)
                        
                        VStack {
                            Image(systemName: "crown.fill")
                                .foregroundColor(.yellow)
                                .font(.system(size: 40))
                                .padding(.bottom, 1)
                            Image("user1")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .clipShape(Circle())
                                .shadow(radius: 10)
                                .overlay(Circle().stroke(Color.gray, lineWidth: 4))
                            Image("userName1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        .frame(width: 110)
                                
                        VStack {
                            Spacer()
                            Image(systemName: "crown.fill")
                                .foregroundColor(.brown)
                                .font(.system(size: 30))
                                .padding(.bottom, 1)
                            Image("user1")
                                .resizable()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                                .shadow(radius: 10)
                                .overlay(Circle().stroke(Color.gray, lineWidth: 4))
                            Image("userName1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        } // VStack
                        .frame(width: 110)
                    } // HStack
                    .padding(.bottom)

                    LeaderBoardList()
                        .padding(.top)
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
