//
//  ContentView.swift
//  NatureUp
//
//  Created by Wonhyuk Choi on 2022/04/05.
//

import SwiftUI

struct ContentView: View {
    
    @State var selection = 0
    
    var body: some View {
        NavigationView {
            TabView(selection: $selection) {
                Text("Tab Content 1")
                    .tabItem {
                        if selection == 0 {
                            Image(systemName: "house")
                        } else {
                            Image(systemName: "house")
                                .environment(\.symbolVariants, .none)
                        }
                        Text("홈")
                    }
                    .tag(0)
                Text("Tab Content 2")
                    .tabItem {
                        if selection == 1 {
                            Image(systemName: "star")
                        } else {
                            Image(systemName: "star")
                                .environment(\.symbolVariants, .none)
                        }
                        Text("리더보드")
                        
                    }
                    .tag(1)
                Text("Tab Content 2")
                    .tabItem {
                        if selection == 2 {
                            Image(systemName: "cart")
                        } else {
                            Image(systemName: "cart")
                                .environment(\.symbolVariants, .none)
                        }
                        Text("상점")
                        
                    }
                    .tag(2)
                Text("Tab Content 2")
                    .tabItem {
                        if selection == 3 {
                            Image(systemName: "person.crop.circle")
                        } else {
                            Image(systemName: "person.crop.circle")
                                .environment(\.symbolVariants, .none)
                        }
                        Text("프로필")
                        
                    }
                    .tag(3)
            }
            .accentColor(Color(red: 4.0 / 255, green: 158.0 / 255, blue: 84.0 / 255))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
