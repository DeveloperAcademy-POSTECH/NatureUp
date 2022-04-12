//
//  LeaderBoardRow.swift
//  NatureUp
//
//  Created by Shin yongjun on 2022/04/08.
//

import SwiftUI

struct LeaderBoardRow: View {
    var userRanking: UserRanking
    
    var body: some View {
        ZStack{
            HStack {
                Text(userRanking.ranking)
                    .font(.system(size: 20))
                    .padding()
                Spacer()
            }
            HStack {
                userRanking.image
                    .resizable()
                    .frame(width: 200, height: 50, alignment: .center)
                
            }
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.gray), lineWidth: 0.1)
                    .shadow(color: .gray, radius: 4, x: 1, y: 1)
            )
            .frame(height: 50)
            .padding(.vertical, 5)
        }
    }
}

struct LeaderBoardRow_Previews: PreviewProvider {
    static var previews: some View {
        LeaderBoardRow(userRanking: userRankings[0])
    }
}

