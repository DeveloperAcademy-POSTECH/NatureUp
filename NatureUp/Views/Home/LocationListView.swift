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
    
    init(location: String) {
        self.location = location
        model.getQueryData(type: location)
    }
    
    var body: some View {
        List(model.list) { activity in
            NavigationLink(destination: AuthenticationView()) {
                Text(activity.name)
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
