//
//  MyLeaderBoardStatus.swift
//  NatureUp
//
//  Created by Shin yongjun on 2022/04/11.
//

import SwiftUI

struct MyLeaderBoardStatus: View {
    @Binding var myRank: Int
    @Binding var myExp: Int
    
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                    .opacity(0.1)
                    .frame(width: 85, height: 27)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color(red: 112/255, green: 210/255, blue: 163/255), lineWidth: 2)
                    )
                Text("내등수 : \(myRank + 1)")
                    .font(.system(size: 14))
                    
    
            }
            
            Spacer()
            
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                    .opacity(0.1)
                    .frame(width: 85, height: 27)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color(red: 112/255, green: 210/255, blue: 163/255), lineWidth: 2)
                    )
                HStack {
                    Image(systemName:"star.circle.fill")
                        .foregroundColor(Color("PrimaryGreen"))
                    Text("\(myExp)")
                        .font(.system(size: 14))
                }
            }
        } // HStack 등수, 경험치
        .padding()
    }
}

struct MyLeaderBoardStatus_Previews: PreviewProvider {
    static var previews: some View {
        MyLeaderBoardStatus(myRank: .constant(0), myExp: .constant(0))
    }
}
