//
//  NatureUpApp.swift
//  NatureUp
//
//  Created by Wonhyuk Choi on 2022/04/05.
//

import SwiftUI
import Firebase

@main
struct NatureUpApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
