//
//  ProfilePicture.swift
//  NatureUp
//
//  Created by Minyoung Kim on 2022/04/08.
//

import SwiftUI

struct ProfilePicture: View {
    var body: some View {
        Image("Everett")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 5)
            }
    }
}

struct ProfilePicture_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePicture()
    }
}
