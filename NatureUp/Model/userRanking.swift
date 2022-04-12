//
//  userRankingModel.swift
//  NatureUp
//
//  Created by Shin yongjun on 2022/04/11.
//

import Foundation
import SwiftUI


struct UserRanking: Identifiable, Decodable {
    var id: Int
    var name: String
    var ranking: String
    var imageName: String
    var image: Image {
        Image(imageName)
    }
}

