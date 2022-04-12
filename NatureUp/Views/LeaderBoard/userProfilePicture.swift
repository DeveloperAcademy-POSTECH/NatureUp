//
//  ProfilePicture.swift
//  NatureUp
//
//  Created by Minyoung Kim on 2022/04/08.
//

import SwiftUI

struct userProfilePicture: View {
    var body: some View {
        Image("Everett")
            .resizable()
            .frame(width: 142, height: 142)
            .scaledToFill()
            .clipShape(Circle())
            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y:0)
            .overlay {
                Circle().stroke(.white, lineWidth: 5)
                
            }
    }
}

struct userProfilePicture_Previews: PreviewProvider {
    static var previews: some View {
        userProfilePicture()
    }
}
