//
//  LocationListView.swift
//  NatureUp
//
//  Created by Wonhyuk Choi on 2022/04/10.
//

import SwiftUI

struct LocationListView: View {
    let location: String
    
    var activities: [String] = [
        "쓰레기 분리수거 하기",
        "건물 내 쓰레기 줍기",
        "수도꼭지 잠그기",
        "멀티탭 끄기"
    ]
    
    var body: some View {
        List(activities, id: \.self) { activity in
            NavigationLink(destination: AuthenticationView()) {
                Text(activity)
                    .foregroundColor(.black)
            }
            .isDetailLink(false)
        }
        .navigationBarTitle(location, displayMode: .inline)
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView(location: "당신이 있는 건물 내")
    }
}
