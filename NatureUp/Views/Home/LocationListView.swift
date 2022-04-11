//
//  LocationListView.swift
//  NatureUp
//
//  Created by Wonhyuk Choi on 2022/04/10.
//

import SwiftUI

struct LocationListView: View {
    @State var isLinkActive : Bool = false
    let location: String
    
    var activities: [String] = [
        "쓰레기 분리수거 하기",
        "건물 내 쓰레기 줍기",
        "수도꼭지 잠그기",
        "멀티탭 끄기"
    ]
    
    var body: some View {
            List(activities, id: \.self) { activity in
                NavigationLink {
                    AuthenticationView(rootIsActive: $isLinkActive)
                } label: {
                    Text(activity)
                }
            }
            .navigationBarTitle(location, displayMode: .inline)
    }
    
    struct LocationListView_Previews: PreviewProvider {
        static var previews: some View {
            LocationListView(location: "당신이 있는 건물 내")
        }
    }
}
