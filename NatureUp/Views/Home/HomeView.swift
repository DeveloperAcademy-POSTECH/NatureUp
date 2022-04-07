//
//  HomeView.swift
//  NatureUp
//
//  Created by Wonhyuk Choi on 2022/04/06.
//

import SwiftUI

struct HomeView: View {
    @State private var showingNotifications = false
    
    var body: some View {
        NavigationView{
            ZStack {
                Color(red: 243.0 / 255, green: 244.0 / 255, blue: 248.0 / 255)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .navigationBarTitle("Home", displayMode: .inline)
                    .toolbar {
                        Button {
                            showingNotifications.toggle()
                        } label: {
                            Label("Notifications", systemImage: "bell.badge")
                        }
                        .accentColor(Color(red: 4.0 / 255, green: 158.0 / 255, blue: 84.0 / 255))
                    }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
