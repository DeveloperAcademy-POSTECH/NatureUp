//
//  ContentView.swift
//  NatureUp
//
//  Created by Wonhyuk Choi on 2022/04/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Tab Content 1")
                .tabItem {
                    Image(systemName: "house")
                    Text("홈")
                }
                .tag(1)
            Text("Tab Content 2")
                .tabItem {
                    Image(systemName: "star")
                    Text("리더보드")
                    
                }
                .tag(2)
            Text("Tab Content 2")
                .tabItem {
                    Image(systemName: "cart")
                    Text("상점")
                    
                }
                .tag(3)
            Text("Tab Content 2")
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("프로필")
                    
                }
                .tag(4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
