//
//  Irwm.swift
//  NatureUp
//
//  Created by HWANG-C-K on 2022/04/11.
//

import SwiftUI
import Foundation

struct Item: Identifiable, Decodable {
    var id: Int
    var point: Int
    var type: String
    var imageName: String
    var image: Image{
        Image(imageName)
    }
}
