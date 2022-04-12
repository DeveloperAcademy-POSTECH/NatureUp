//
//  userProfilePictureYoung.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/13.
//

import SwiftUI

struct userProfilePictureYoung: View {
    var body: some View {
        Image("young")
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

struct userProfilePictureYoung_Previews: PreviewProvider {
    static var previews: some View {
        userProfilePicture()
    }
}
