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
                Color("BackgroundGray")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .navigationBarTitle("Home", displayMode: .inline)
                    .toolbar {
                        Button {
                            showingNotifications.toggle()
                        } label: {
                            Label("Notifications", systemImage: "bell.badge")
                        }
                        .accentColor(Color("PrimaryGreen"))
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
