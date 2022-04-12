//
//  ContentView.swift
//  NatureUp
//
//  Created by Wonhyuk Choi on 2022/04/05.
//

import SwiftUI

struct ContentView: View {
    
    enum Tabs: String {
        case home = "추천 활동"
        case leaderBoard = "리더보드"
        case market = "상점"
        case profile = "프로필"
    }
    
    @State private var showingNotifications = false
    @State private var showingProfileEditor = false
    @State var tabSelection:Tabs = .home
    
    let appearance: UITabBarAppearance = UITabBarAppearance()
    init() {
        UITabBar.appearance().scrollEdgeAppearance = appearance
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
                        Text(Tabs.home.rawValue)
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
                        Text(Tabs.leaderBoard.rawValue)
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
                        Text(Tabs.market.rawValue)
                        
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
                        Text(Tabs.profile.rawValue)
                    }
                    .tag(Tabs.profile)
            }
            .accentColor(Color("PrimaryGreen"))
            .navigationBarTitle(self.tabSelection.rawValue, displayMode: .inline)
            .toolbar {
                if tabSelection == Tabs.home {
                    Button {
                        showingNotifications.toggle()
                    } label: {
                        Label("Notifications", systemImage: "bell.badge")
                    }
                    .accentColor(Color("PrimaryGreen"))
                    .sheet(
                        isPresented: $showingNotifications,
                        content: {
                            
                            NotificationView()
                        }
                    )
                } else if tabSelection == Tabs.profile {
                    Button {
                        showingProfileEditor.toggle()
                    } label: {
                        Text("Edit")
                    }
                    .accentColor(Color("PrimaryGreen"))
                    .sheet(
                        isPresented: $showingProfileEditor,
                        content: {
                            
                            ProfileEditor()
                        }
                    )
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
