//
//  LeaderBoardView.swift
//  NatureUp
//
//  Created by Shin yongjun on 2022/04/08.
//

import SwiftUI

struct LeaderBoardView: View {
    @ObservedObject var userVM = UserViewModel()
    let myId = "cVP4ck6CvPzRaOp4NE7c"
    
    init() {
        userVM.getUser(id: myId)
        userVM.getAllData()
    }
    
    var body: some View {
        ZStack {
            Color("BackgroundGray")
            VStack {
                MyLeaderBoardStatus(myRank: userVM.list.firstIndex(where: { $0.id == myId }), myExp: userVM.user.exp)
                HStack {
                    NavigationLink(destination: userProfileView(userRanking: userRankings[1])) {
                        VStack(alignment: .center) {
                            Spacer()
                            Image(systemName: "crown.fill")
                                .foregroundColor(Color(red: 192/255, green: 192/255, blue: 192/255, opacity: 100))
                                .font(.system(size: 30))
                            Image(userVM.list.count > 0 ? userVM.list[1].name : "")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                                .shadow(radius: 10)
                                .overlay(Circle().stroke(Color.gray, lineWidth: 4))
                            Image("\(userVM.list.count > 0 ? userVM.list[1].name : "")Name")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        .frame(width: 110)
                    }
                    NavigationLink(destination: userProfileView(userRanking: userRankings[0]))
                    {
                        VStack {
                            Image(systemName: "crown.fill")
                                .foregroundColor(Color(red: 212/255, green: 175/255, blue: 55/255))
                                .font(.system(size: 40))
                                .padding(.bottom, 1)
                                .padding(.top, -70)
                            Image(userVM.list.count > 0 ? userVM.list[0].name : "")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .clipShape(Circle())
                                .shadow(radius: 10)
                                .overlay(Circle().stroke(Color.gray, lineWidth: 4))
                                .padding(.top, -25)
                            Image("\(userVM.list.count > 0 ? userVM.list[0].name : "")Name")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        .frame(width: 110)
                    }
                    NavigationLink(destination: userProfileView(userRanking: userRankings[2])) {
                        VStack {
                            Spacer()
                            Image(systemName: "crown.fill")
                                .foregroundColor(Color(red: 159/255, green: 122/255, blue: 52/255))
                                .font(.system(size: 30))
                                .padding(.bottom, 1)
                            Image(userVM.list.count > 0 ? userVM.list[2].name : "")
                                .resizable()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                                .shadow(radius: 10)
                                .overlay(Circle().stroke(Color.gray, lineWidth: 4))
                            Image("\(userVM.list.count > 0 ? userVM.list[2].name : "")Name")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        } // VStack
                        .frame(width: 110)
                    }
                } // HStack
                .padding(.bottom, 60)
                VStack {
                    LeaderBoardList()
                        .padding(.vertical, -60)
                }
                Spacer()
            } // VStack
            .padding(.bottom, 60)
        } // ZStack
    }
}

struct LeaderBoardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderBoardView()
    }
}
