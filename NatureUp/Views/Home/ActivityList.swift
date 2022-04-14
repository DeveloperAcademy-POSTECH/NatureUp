//
//  ActivityList.swift
//  NatureUp
//
//  Created by Wonhyuk Choi on 2022/04/07.
//

import SwiftUI

struct ActivityList: View {
    @ObservedObject var model = ActivityViewModel()
    let location: String
    
    let locationLabels = [
        "building" : "건물 내",
        "road" : "길거리",
        "mountain" : "산",
        "ocean" : "바다",
        "river" : "강",
        "market" : "가게"
    ]
    
    init(location: String) {
        self.location = location
        model.getQueryData(type: location)
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(locationLabels[location] ?? "")
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
            if model.list.count > 3 {
                ForEach(model.list[0...2]) { activity in
                    NavigationLink(destination: AuthenticationView()) {
                        ActivityRow(activityName: activity.name)
                    }
                    .isDetailLink(false)
                }
            } else {
                ForEach(model.list) { activity in
                    NavigationLink(destination: AuthenticationView()) {
                        ActivityRow(activityName: activity.name)
                    }
                    .isDetailLink(false)
                }
            }
            
        }
        .padding()
    }
}

struct ActivityList_Previews: PreviewProvider {
    static var previews: some View {
        ActivityList(location: "road")
    }
}
