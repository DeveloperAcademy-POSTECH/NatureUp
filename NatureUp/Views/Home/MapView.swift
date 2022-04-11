//
//  MapView.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/11.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var viewModel = ContentViewModel()
    
    var body: some View {
        Map(coordinateRegion: $viewModel.region,showsUserLocation: true)
            .accentColor(Color("PrimaryGreen"))
            .ignoresSafeArea()
            .onAppear {
                viewModel.checkIfLocationServicesIsEnabled()
            }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

final class ContentViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 36.01434, longitude: 129.32577), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    var locationManager: CLLocationManager?
    func checkIfLocationServicesIsEnabled() {
        if CLLocationManager.locationServicesEnabled() {
         locationManager = CLLocationManager()
            locationManager!.delegate = self
        } else {
            print("Show an alert letting them know this is off and to fo turn it on.")
        }
    }
    
    private func checkLocationAuthorization() {
        guard let locationManager = locationManager else { return }
        
        switch locationManager.authorizationStatus {
            
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            print("Your location is restricted likely due to parental controls.")
        case .denied:
            print("You have denied this app location permission. Go into settings to change.")
        case .authorizedAlways, .authorizedWhenInUse:
            region = MKCoordinateRegion(center: locationManager.location!.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        @unknown default:
            break
        }
    }
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuthorization()
    }
}
