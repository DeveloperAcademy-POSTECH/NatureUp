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
                Text(activity)
                    .font(.headline)
                Spacer()
            }
            .padding()
        }
        .cornerRadius(1)
        .overlay(
            RoundedRectangle(cornerRadius: 1)
                .stroke(Color(.black), lineWidth: 0.4)
        )
        .frame(height: 50)
    }
}

struct Activity_Previews: PreviewProvider {
    static var previews: some View {
        Activity(activity: "쓰레기 분리수거 하기")
    }
}
