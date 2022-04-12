//
//  AuthenticationSuccessView.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/08.
//

import SwiftUI

struct AuthenticationSuccessView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button(action: {
            dismiss()
            dismiss()
        }) {
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
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("인증완료")
    }
}

struct AuthenticationSuccessView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationSuccessView()
    }
}
