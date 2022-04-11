//
//  Evaluation.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/11.
//

import Foundation
import SwiftUI

struct Evaluation: Hashable, Codable {
    var id: Int
    var name: String

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
