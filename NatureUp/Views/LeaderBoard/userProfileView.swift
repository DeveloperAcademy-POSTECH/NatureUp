//
//  ProfileView.swift
//  NatureUp
//
//  Created by Minyoung Kim on 2022/04/08.
//

import SwiftUI

struct userProfileView: View {
    @Environment(\.editMode) var editMode
    
    var body: some View {
        ZStack {
            Color("BackgroundGray")
            VStack {
                userProfileStatus()
                userProfilePicture()
                NamePlate()
                Text("오늘 지구를 살린 활동")
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 35)
                    .padding(.top, 30)
                    .padding(.bottom, -3)
                
                ActivityAlbum()
                Spacer()
                    .navigationBarTitle("다른사람 평가하기", displayMode: .inline)
                
            }
        }
    }
}

struct userProfileView_Previews: PreviewProvider {
    static var previews: some View {
        userProfileView()
        
    }
}
