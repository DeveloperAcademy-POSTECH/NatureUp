//
//  ProfileStatus.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/09.
//

import SwiftUI

struct ProfileStatus: View {
    var body: some View {
        HStack {
            ZStack{
                RoundedRectangle(cornerRadius:10)
                    .fill(Color.white)
                    .opacity(0.1)
                    .frame(width:85, height:27)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(red: 112/255, green: 210/255, blue: 163/255), lineWidth: 2)
                    )
                Text("내등수 :  131")
                    .font(.system(size: 12))
            }
            Spacer()
            ZStack{
                RoundedRectangle(cornerRadius:10)
                    .fill(Color.white)
                    .opacity(0.1)
                    .frame(width:85, height:27)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(red: 112/255, green: 210/255, blue: 163/255), lineWidth: 2)
                    )
                Text("포인트 : 100")
                    .font(.system(size: 12))
            }
        }
        .padding()
    }
}

struct ProfileStatus_Previews: PreviewProvider {
    static var previews: some View {
        ProfileStatus()
    }
}
