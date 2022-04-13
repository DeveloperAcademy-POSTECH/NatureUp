//
//  PlayedActivity.swift
//  NatureUp
//
//  Created by Wonhyuk Choi on 2022/04/13.
//

import Foundation
import Firebase

struct PlayedActivity: Identifiable {
    
    var id: String
    var name: String
    var timestamp: Timestamp
    var score: Int
    var userId: String
}
