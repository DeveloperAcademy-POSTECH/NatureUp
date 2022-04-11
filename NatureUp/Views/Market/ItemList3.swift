//
//  ItemList3.swift
//  NatureUp
//
//  Created by HWANG-C-K on 2022/04/07.
//

import SwiftUI


struct ItemList3: View {
    
    var columns: [GridItem] =
             Array(repeating: .init(.flexible()), count: 3)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 10) {
//                ForEach(items, id: \.id) { i  in
//                    ZStack{
//                        ItemCardView()
//                    }
//                }.padding(15)
            }
        }
    }
}

struct ItemList3_Previews: PreviewProvider {
    static var previews: some View {
        ItemList3()
//            .environmentObject()
    }
}
