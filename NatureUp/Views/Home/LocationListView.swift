//
//  LocationListView.swift
//  NatureUp
//
//  Created by Wonhyuk Choi on 2022/04/10.
//

import SwiftUI

struct LocationListView: View {
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
        List(model.list) { activity in
            NavigationLink(destination: AuthenticationView()) {
                HStack {
                    Text(activity.name)
                        .foregroundColor(.black)
                    VStack(alignment: .trailing) {
                        HStack {
                            switch activity.level {
                            case 1:
                                Text("+\(3)")
                            case 2:
                                Text("+\(5)")
                            case 3:
                                Text("+\(7)")
                            default :
                                Text("+\(0)")
                            }
                            Image(systemName: "leaf.fill")
                        }
                        HStack {
                            switch activity.level {
                            case 1:
                                Text("+\(10)")
                            case 2:
                                Text("+\(20)")
                            case 3:
                                Text("+\(30)")
                            default :
                                Text("+\(0)")
                            }
                            Image(systemName: "star.circle.fill")
                        }
                    }
                    .font(.caption2)
                    .foregroundColor(Color("SecondGreen"))
                }
            }
            .isDetailLink(false)
        }
        .navigationBarTitle(locationLabels[location] ?? "", displayMode: .inline)
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView(location: "road")
    }
}
