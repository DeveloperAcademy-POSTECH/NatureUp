//
//  ProfileStatus.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/09.
//

import SwiftUI

struct userProfileStatus: View {
    var body: some View {
        HStack {
            ZStack{
                RoundedRectangle(cornerRadius:10)
                    .fill(Color.white)
                    .opacity(0.1)
                    .frame(width:120, height:27)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(red: 112/255, green: 210/255, blue: 163/255), lineWidth: 2)
                    )
                Text("다른 사람 등수 : 1")
                    .font(.system(size: 14))
            }
            Spacer()
            ZStack{
                RoundedRectangle(cornerRadius:10)
                    .fill(Color.white)
                    .opacity(0.1)
                    .frame(width:120, height:27)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(red: 112/255, green: 210/255, blue: 163/255), lineWidth: 2)
                    )
                HStack {
                    Image(systemName: "leaf.fill")
                        .foregroundColor(Color("PrimaryGreen"))
                    Text("100")
                        .font(.system(size: 14))
                }
            }
        }
        .padding()
    }
}

struct userProfileStatus_Previews: PreviewProvider {
    static var previews: some View {
        ProfileStatus()
    }
}
