//
//  userProfileViewYoung.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/13.
//

import SwiftUI

struct userProfileViewYoung: View {
    @Environment(\.editMode) var editMode
    
    var body: some View {
        ZStack {
            Color("BackgroundGray")
            ScrollView {
                VStack {
                    userProfileStatusYoung()
                    userProfilePictureYoung()
                    Image("YoungName")
                        .resizable()
                        .frame(width:230, height: 70)
                    HStack {
                        Text("오늘 지구를 살린 활동")
                            .font(.headline)
                            .fontWeight(.heavy)
                        Spacer()
                    }
                    .padding([.top, .leading])
                    ActivityAlbum()
                    Spacer()
                    
                }
            }
        }
    }
}

struct userProfileViewYoung_Previews: PreviewProvider {
    static var previews: some View {
        userProfileView()
        
    }
}
