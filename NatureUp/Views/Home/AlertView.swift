//
//  AlertView.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/12.
//

import SwiftUI

struct AlertView: View {
    var body: some View {
        ZStack {
            Color("BackgroundGray")
                .ignoresSafeArea()
            ScrollView {
            VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("오늘")
                    .font(.system(size: 20))
                    .fontWeight(.heavy)
                    .foregroundColor(Color("PrimaryGreen"))
                AlertList()
            }
                Divider()
            VStack(alignment: .leading) {
                Text("어제")
                    .font(.system(size: 20))
                    .fontWeight(.heavy)
                    .foregroundColor(Color("PrimaryGreen"))
                AlertList()
            }
                Divider()
            VStack(alignment: .leading) {
                Text("이전 활동")
                    .font(.system(size: 20))
                    .fontWeight(.heavy)
                    .foregroundColor(Color("PrimaryGreen"))
                AlertList()
                AlertList()
                AlertList()
            }
            .navigationBarTitle("알림")
        }
            .padding()
        }
    }
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
