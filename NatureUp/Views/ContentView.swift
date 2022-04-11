//
//  ContentView.swift
//  NatureUp
//
//  Created by Wonhyuk Choi on 2022/04/05.
//

import SwiftUI

struct ContentView: View {
    
    enum Tabs {
        case home, leaderBoard, market, profile
    }
    
    @State private var showingNotifications = false
    @State var tabSelection:Tabs = .home
    
    func returnNaviBarTitle(tabSelection: Tabs) -> String{
        switch tabSelection{
        case .home: return "추천 활동"
        case .leaderBoard: return "리더보드"
        case .market: return "상점"
        case .profile: return "사용자 정보"
        }
    }
    
    var body: some View {
        NavigationView {
            TabView(selection: $tabSelection) {
                HomeView()
                    .tabItem {
                        if tabSelection == Tabs.home {
                            Image(systemName: "leaf")
                        } else {
                            Image(systemName: "leaf")
                                .environment(\.symbolVariants, .none)
                        }
                        Text("추천 활동")
                    }
                    .tag(Tabs.home)
                LeaderBoardView()
                    .tabItem {
                        if tabSelection == Tabs.leaderBoard {
                            Image(systemName: "star")
                        } else {
                            Image(systemName: "star")
                                .environment(\.symbolVariants, .none)
                        }
                        Text("리더보드")
                    }
                    .tag(Tabs.leaderBoard)
                MarketView()
                    .tabItem {
                        if tabSelection == Tabs.market {
                            Image(systemName: "cart")
                        } else {
                            Image(systemName: "cart")
                                .environment(\.symbolVariants, .none)
                        }
                        Text("상점")
                        
                    }
                    .tag(Tabs.market)
                ProfileView()
                    .tabItem {
                        if tabSelection == Tabs.profile {
                            Image(systemName: "person.crop.circle")
                        } else {
                            Image(systemName: "person.crop.circle")
                                .environment(\.symbolVariants, .none)
                        }
                        Text("프로필")
                        
                    }
                    .tag(Tabs.profile)
            }
            .accentColor(Color("PrimaryGreen"))
            .navigationBarTitle(returnNaviBarTitle(tabSelection: self.tabSelection), displayMode: .inline)
            .toolbar {
                if tabSelection == Tabs.home {
                    Button {
                        showingNotifications.toggle()
                    } label: {
                        Label("Notifications", systemImage: "bell.badge")
                    }
                    .accentColor(Color("PrimaryGreen"))
                }
            }
        }
        .accentColor(Color("PrimaryGreen"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
