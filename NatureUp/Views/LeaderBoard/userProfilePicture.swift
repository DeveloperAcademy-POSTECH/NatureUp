//
//  ProfilePicture.swift
//  NatureUp
//
//  Created by Minyoung Kim on 2022/04/08.
//

import SwiftUI

struct userProfilePicture: View {
    var body: some View {
        Image("user1")
            .resizable()
            .frame(width: 142, height: 142)
        // frame + clipped()를 하면 사진 크기는 그대로인채 프레임대로 사진이 잘리고 (에버렛 얼굴만 보임), resizable() + frame을 하면 사진 크기 자체가 줄어듦
            .scaledToFill()
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 5)
                
            }
    }
}

struct userProfilePicture_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePicture()
    }
}
