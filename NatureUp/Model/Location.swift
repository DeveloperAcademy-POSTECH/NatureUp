//
//  Location.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/14.
//

import Foundation
import CoreLocation

struct Location: Identifiable, Decodable {
    let id = UUID()
    let name: String
    let type: String
    let lon: Double
    let lat: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: lat, longitude: lon)
    }
}
