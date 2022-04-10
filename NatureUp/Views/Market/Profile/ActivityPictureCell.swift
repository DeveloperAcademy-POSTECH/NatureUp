//
//  ActivityPictures.swift
//  NatureUp
//
//  Created by Minyoung Kim on 2022/04/10.
//

import SwiftUI

struct ActivityPictureCell: View {
    static let coulmn = 3
    static let row = 7
    let width =
    (UIScreen.main.bounds.width/3)-25
    
    var body: some View {
        ZStack{
        RoundedRectangle(cornerRadius: 8)
                .frame(width: width, height: width)
                .foregroundColor(Color.gray)
        Text("사진")
                .font(.title3)
                .foregroundColor(.white)
        }
    }
}

struct ActivityPictureCell_Previews: PreviewProvider {
    static var previews: some View {
        ActivityPictureCell()
    }
}
