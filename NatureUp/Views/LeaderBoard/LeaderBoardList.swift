//
//  LeaderBoardList.swift
//  NatureUp
//
//  Created by Shin yongjun on 2022/04/11.
//

import SwiftUI

struct LeaderBoardList: View {
    var body: some View {
        VStack{
            ScrollView {
                VStack {
                    ForEach(3..<userRankings.count, id: \.self) { index in
                        NavigationLink(destination: userProfileView()) {
                            LeaderBoardRow(userRanking: userRankings[index])
                            
                                .padding(.horizontal)
                        }
                        .navigationBarHidden(true)
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
