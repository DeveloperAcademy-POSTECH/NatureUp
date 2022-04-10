//
//  AuthenticationSuccessView.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/08.
//

import SwiftUI

struct AuthenticationSuccessView: View {
    @Binding var shouldPopToRootView : Bool
    
    var body: some View {
        NavigationLink(destination: ContentView()) {
            Button(action: {self.shouldPopToRootView = false}, label: {
            ZStack {
                Color("BackgroundGray")
                VStack {
                    Image(systemName: "leaf.circle")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .foregroundColor(Color("SecondGreen"))
                        .padding()
                    Text("Nature UP")
                        .font(.system(size: 50))
                        .foregroundColor(Color("SecondGreen"))
                }
            }
            })
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("인증완료")
    }
}

struct AuthenticationSuccessView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationSuccessView(shouldPopToRootView: .constant(true))
    }
}
