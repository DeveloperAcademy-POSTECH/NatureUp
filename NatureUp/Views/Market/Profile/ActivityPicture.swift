//
//  ActivityPicture.swift
//  NatureUp
//
//  Created by Minyoung Kim on 2022/04/10.
//

import SwiftUI

struct ActivityPicture: View {
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(0..<ActivityPictureCell.row, id: \.self){ i in
                HStack{
                    ForEach(0..<ActivityPictureCell.coulmn, id: \.self){j in
                        ActivityPictureCell()
                    }
                    .padding(3)
                    //사진 가로 사이
                }
                .padding(2)
                //사진 세로 사이
            }
        }
    }
}

struct ActivityPicture_Previews: PreviewProvider {
    static var previews: some View {
        ActivityPicture()
    }
}
