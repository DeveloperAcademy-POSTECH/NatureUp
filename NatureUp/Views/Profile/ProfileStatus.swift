//
//  ProfileStatus.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/09.
//

import SwiftUI

struct ProfileStatus: View {
    @ObservedObject var userVM = UserViewModel()
    let myId = "cVP4ck6CvPzRaOp4NE7c"
    
    init() {
        userVM.getUser(id: myId)
        userVM.getAllData()
    }
    
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
                Text("내등수 : \((userVM.list.firstIndex(where: { $0.id == myId }) ?? -1) + 1)")
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
                HStack {
                    Image(systemName: "star.circle.fill")
                        .foregroundColor(Color("PrimaryGreen"))
                    Text("\(userVM.user.exp)")
                        .font(.system(size: 14))
                }
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
