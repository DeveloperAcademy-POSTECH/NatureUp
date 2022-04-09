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
    (UIScreen.main.bounds.width/3)-31
    //전체 앱 화면 폭이 390, 각 셀의 폭이 99, 390/3-X=99, x=31
    
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
