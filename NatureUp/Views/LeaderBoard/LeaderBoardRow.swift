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
//        ForEach(4..<21) {number in
//            HStack {
//                ZStack {
//                    RoundedRectangle(cornerRadius: 10)
//                        .fill(Color.black.opacity(0.05))
//                        .frame(width: 370, height: 70)
//
//
//                    HStack {
//                        Text("\(number)")
//                            .font(.system(size: 23))
//
//                    Spacer()
//                        .overlay(Image("userName1"))
//                            .frame(width: 300, height: 55)
//                    }
//                }
//            }.padding()
//
//        }
//    }
            HStack {
                userRanking.image
                    .resizable()
                    .frame(width: 200, height: 50, alignment: .center)
                
                Text(userRanking.name)
            }
        }
    }

struct LeaderBoardRow_Previews: PreviewProvider {
    static var previews: some View {
        LeaderBoardRow(userRanking: userRankings[0])
    }
}

