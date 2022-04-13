//
//  LeaderBoardList.swift
//  NatureUp
//
//  Created by Shin yongjun on 2022/04/11.
//

import SwiftUI

struct LeaderBoardList: View {
    @ObservedObject var userVM = UserViewModel()
    let myId = "cVP4ck6CvPzRaOp4NE7c"
    
    init() {
        userVM.getUser(id: myId)
        userVM.getAllData()
    }
    
    var body: some View {
        VStack{
            ScrollView {
                VStack {
                    if userVM.list.count < 20 {
                        if userVM.list.count > 3 {
                            ForEach(3..<userVM.list.count, id: \.self) { index in
                                NavigationLink(destination: userProfileView(userRanking: userRankings[index])) {
                                    LeaderBoardRow(userRanking: userRankings[index])
                                        .padding(.horizontal)
                                }
                            }
                        }
                    } else {
                        ForEach(3..<20, id: \.self) { index in
                            NavigationLink(destination: userProfileView(userRanking: userRankings[index])) {
                                LeaderBoardRow(userRanking: userRankings[index])
                                    .padding(.horizontal)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct LeaderBoardList_Previews: PreviewProvider {
    static var previews: some View {
        LeaderBoardList()
    }
}
