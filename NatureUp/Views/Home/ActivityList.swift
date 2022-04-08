//
//  ActivityList.swift
//  NatureUp
//
//  Created by Wonhyuk Choi on 2022/04/07.
//

import SwiftUI

struct ActivityList: View {
    var location: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(location)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("PrimaryGreen"))
                Button(action: {}) {
                    Image(systemName: "chevron.forward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("PrimaryGreen"))
                        .frame(width: 20.0, height: 20.0)
                }
            }
            Activity(activity: "쓰레기 분리수거 하기")
            Activity(activity: "건물 내 쓰레기 줍기")
            Activity(activity: "수도꼭지 잠그기")
        }
        .padding()
    }
}

struct ActivityList_Previews: PreviewProvider {
    static var previews: some View {
        ActivityList(location: "당신이 있는 건물 내")
    }
}
