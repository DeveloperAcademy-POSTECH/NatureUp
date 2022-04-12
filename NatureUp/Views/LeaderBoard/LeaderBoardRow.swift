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
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white)
                .shadow(color: .gray, radius: 4, x: 1, y: 1)
                .frame(height: 60)
                .padding(.vertical, 5)
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
        }
    }
}

struct LeaderBoardRow_Previews: PreviewProvider {
    static var previews: some View {
        LeaderBoardRow(userRanking: userRankings[0])
    }
}

