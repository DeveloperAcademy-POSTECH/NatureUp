//
//  LeaderBoardRow.swift
//  NatureUp
//
//  Created by Shin yongjun on 2022/04/08.
//

import SwiftUI

struct LeaderBoardRow: View {

    var body: some View {
        ForEach(4..<21) {number in
            HStack {
                Text("\(number)")

                Image("userName1")
                    .resizable()
                    .frame(width: 200, height: 50)
                
            }.padding()
            
        }
    }
}

struct LeaderBoardRow_Previews: PreviewProvider {
    static var previews: some View {
        LeaderBoardRow()
    }
}
