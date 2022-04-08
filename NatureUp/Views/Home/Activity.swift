//
//  Activity.swift
//  NatureUp
//
//  Created by Wonhyuk Choi on 2022/04/07.
//

import SwiftUI

struct Activity: View {
    let activity: String
    
    var body: some View {
        ZStack {
            Color(.white)
            HStack {
                NavigationLink(destination: AuthenticationView()) {
                    Text(activity)
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundColor(Color.black)
                }
                Spacer()
            }
            .padding()
        }
        .cornerRadius(1)
        .overlay(
            RoundedRectangle(cornerRadius: 1)
                .stroke(Color(red: 151.0/255, green: 151.0/255, blue: 151.0/255), lineWidth: 0.4)
        )
        .frame(height: 50)
    }
}

struct Activity_Previews: PreviewProvider {
    static var previews: some View {
        Activity(activity: "쓰레기 분리수거 하기")
    }
}
