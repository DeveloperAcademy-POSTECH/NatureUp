//
//  AuthenticationView.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/05.
//

import SwiftUI

struct AuthenticationView: View {
    var body: some View {
        Camera()
            .navigationBarTitle("활동 인증하기", displayMode:.inline)
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView()
    }
}
