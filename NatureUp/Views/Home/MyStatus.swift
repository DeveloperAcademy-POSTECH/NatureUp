//
//  MyStatus.swift
//  NatureUp
//
//  Created by Wonhyuk Choi on 2022/04/07.
//

import SwiftUI

struct MyStatus: View {
    @ObservedObject var userVM = UserViewModel()
    
    init() {
        userVM.getUser(id: "cVP4ck6CvPzRaOp4NE7c")
    }
    
    var body: some View {
        HStack {
            Spacer()
            HStack(spacing: 5) {
                Image(systemName:"text.badge.star")
                    .foregroundColor(Color("PrimaryGreen"))
                    .padding(5)
                Text("\(userVM.user.exp)")
            }
            Spacer()
            Divider()
                .background(Color("PrimaryGreen"))
                .opacity(0.3)
                .frame(height: 25)
            Spacer()
            HStack(spacing: 5) {
                Image(systemName:"star.circle.fill")
                    .foregroundColor(Color("PrimaryGreen"))
                    .padding(5)
                Text("\(userVM.user.points)")
            }
            Spacer()
        }
        .frame(height: 40)
        .background(
            Color(red: 0.85, green: 0.935, blue: 0.914)
        )
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color("PrimaryGreen"), lineWidth: 1)
        )
        .padding()
    }
}

struct MyStatus_Previews: PreviewProvider {
    static var previews: some View {
        MyStatus()
    }
}
