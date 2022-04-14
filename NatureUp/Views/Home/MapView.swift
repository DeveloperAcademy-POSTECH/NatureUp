//
//  MapView.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/11.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var viewModel = LoactionViewModel()
    let location : [Location]
    
    var body: some View {
        Map(coordinateRegion: $viewModel.region,
            showsUserLocation: true,
            annotationItems: location) { location in
            MapAnnotation(coordinate: location.coordinate) {
                Image(systemName: "leaf")
                    .foregroundColor(Color("PrimaryGreen"))
            }
        }
            .accentColor(Color("PrimaryGreen"))
            .ignoresSafeArea()
            .onAppear {
                viewModel.checkIfLocationServicesIsEnabled()
            }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(location: locations)
    }
}
