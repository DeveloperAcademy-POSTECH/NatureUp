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
            VStack {
                ProfileStatus()
                ProfilePicture()
                NamePlate()
                
                Text("오늘 지구를 살린 활동")
                    .font(.title2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 40)
                    .padding(.top, 35)
                    .padding(.bottom, 5)

                ActivityAlbum()
                Spacer()
                
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
        
    }
}
