//
//  ProfileView.swift
//  NatureUp
//
//  Created by Minyoung Kim on 2022/04/08.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {

        ZStack {
            Color("BackgroundGray")

            ProfilePicture()
                .padding(.bottom, 450)

        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
        
    }
}
