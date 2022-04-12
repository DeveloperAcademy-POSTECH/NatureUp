//
//  ActivityAlbum.swift
//  NatureUp
//
//  Created by Minyoung Kim on 2022/04/11.
//

import SwiftUI

struct ActivityAlbum: View {
    
    
    let imageList = ["img01", "img02", "img03", "img04", "img05", "img06", "img07", "img08", "img09", "img10", "img11", "img12", "img13", "img14", "img15", "img16", "img17", "img18", "img19", "img20", "img21"]
    
    
    var columns: [GridItem] =
    Array(repeating: .init(.flexible(maximum:105)), count: 3)
    
    
    var body: some View {
        LazyVGrid(columns: Array(repeating: .init(.flexible(), spacing:-15), count: 3)) {
            ForEach(imageList, id: \.self){ index in
                Image(index)
                    .resizable()
                    .frame(width: 110, height: 110)
                    .scaledToFill()
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                
            }
        }
        
    }
}

struct ActivityAlbum_Previews: PreviewProvider {
    static var previews: some View {
        ActivityAlbum()
    }
}
