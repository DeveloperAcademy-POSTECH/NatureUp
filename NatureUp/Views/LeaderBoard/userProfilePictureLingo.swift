//
//  userProfilePictureLingo.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/13.
//

import SwiftUI

struct userProfilePictureLingo: View {
    var body: some View {
        Image("lingo")
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

struct userProfilePictureLingo_Previews: PreviewProvider {
    static var previews: some View {
        userProfilePicture()
    }
}
