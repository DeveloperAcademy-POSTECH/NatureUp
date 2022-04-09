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
            ForEach(0..<ActivityPictureCell.row){ i in
                HStack{
                    
                    ForEach(0..<ActivityPictureCell.coulmn){j in
                        ActivityPictureCell()
                    }
                }
            }
        }
    }
}

struct ActivityPicture_Previews: PreviewProvider {
    static var previews: some View {
        ActivityPicture()
    }
}
