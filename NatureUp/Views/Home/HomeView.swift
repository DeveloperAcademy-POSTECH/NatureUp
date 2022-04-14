//
//  HomeView.swift
//  NatureUp
//
//  Created by Wonhyuk Choi on 2022/04/07.
//

import SwiftUI
import MapKit

struct HomeView: View {
    @State var locationManager = LocationManager()
    @State var nearestPin : Location?
    @State var secondestPin : Location?
    
    //MARK: - nearest pin searching algorithm
    
    func getNearestPins() {
        let curLocation = CLLocation(latitude: locationManager.lastLocation?.coordinate.latitude ?? 0, longitude: locationManager.lastLocation?.coordinate.longitude ?? 0)
        
        // nearest pin
        self.nearestPin = locations.reduce((CLLocationDistanceMax, nil as Location?)) { nearest, location in
            
            let loc = CLLocation(latitude: location.lat, longitude: location.lon)
            let distance = curLocation.distance(from: loc)
            
            return distance < nearest.0 ? (distance, location) : nearest
        }.1
        
        // second nearest pin
        self.secondestPin = locations.reduce((CLLocationDistanceMax, nil as Location?)) { nearest, location in
            
            let loc = CLLocation(latitude: location.lat, longitude: location.lon)
            var distance = curLocation.distance(from: loc)
            
            if location.lat == nearestPin?.lat && location.lon == nearestPin?.lon || location.type == nearestPin?.type {
                distance = CLLocationDistanceMax
            }
            
            return distance < nearest.0 ? (distance, location) : nearest
        }.1
    }
    
    var body: some View {
        ZStack {
            Color("BackgroundGray")
            VStack {
                MyStatus()
                ScrollView {
                    ActivityList(location: nearestPin?.type ?? "")
                    ActivityList(location: secondestPin?.type ?? "")
                    HStack {
                        Spacer()
                        Text("반경 20m내 오차범위가 있을 수 있습니다.")
                            .font(.footnote)
                            .fontWeight(.light)
                            .foregroundColor(Color.gray)
                        .padding()
                    }
                }
                NavigationLink(
                    destination: EvaluationView(evaluation: evaluations)
                ) {
                    Text("랜덤평가 진행하기")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .font(.system(size: 18))
                        .padding()
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.white, lineWidth: 0)
                        )
                        .background(Color("SecondGreen"))
                        .cornerRadius(10)
                        .padding()
                }
                .isDetailLink(false)
            }
        }
        .onAppear(
            perform: getNearestPins
        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
