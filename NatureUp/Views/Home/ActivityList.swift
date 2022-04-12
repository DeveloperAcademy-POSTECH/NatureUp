//
//  ActivityList.swift
//  NatureUp
//
//  Created by Wonhyuk Choi on 2022/04/07.
//

import SwiftUI

struct ActivityList: View {
    let location: String
    
    let activityList : [String] = [
        "쓰레기 분리수거 하기",
        "건물 내 쓰레기 줍기",
        "수도꼭지 잠그기"
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(location)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("PrimaryGreen"))
                NavigationLink(
                    destination: LocationListView(location: location))
                {
                    Image(systemName: "chevron.forward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("PrimaryGreen"))
                        .frame(width: 20.0, height: 20.0)
                }
            }
            ForEach(activityList, id: \.self) { activityName in
                NavigationLink(destination: AuthenticationView()) {
                    ActivityRow(activityName: activityName)
                }
                .isDetailLink(false)
            }
        }
        .padding()
    }
}

struct ActivityList_Previews: PreviewProvider {
    static var previews: some View {
        ActivityList(location: "당신이 있는 건물 내")
    }
}
