//
//  MyStatus.swift
//  NatureUp
//
//  Created by Wonhyuk Choi on 2022/04/07.
//

import SwiftUI

struct MyStatus: View {
    var body: some View {
        HStack(spacing: 50.0) {
            VStack(spacing: 5) {
                Text("현재 내 등수")
                Text("131")
            }
            Divider()
            VStack(spacing: 5) {
                Text("현재 내 포인트")
                Text("100")
            }
        }
        .padding(.horizontal, 50.0)
        .background(
            Color(red: 0.85, green: 0.935, blue: 0.914)
        )
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color("PrimaryGreen"), lineWidth: 1)
        )
        
    }
}

struct MyStatus_Previews: PreviewProvider {
    static var previews: some View {
        MyStatus()
            .frame(height: 80)
    }
}
