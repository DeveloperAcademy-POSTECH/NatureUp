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
    private var ImageName: String
    var image: Image{
        Image(ImageName)
    }
}
