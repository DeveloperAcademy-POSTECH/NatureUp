//
//  ItemListRow.swift
//  NatureUp
//
//  Created by HWANG-C-K on 2022/04/11.
//

import SwiftUI

struct ItemCardRow: View {
    var item : Item
    var body: some View {
        VStack{
            ZStack {
                ItemCardView()
                item.image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.leading,10)
                    .padding(.trailing,10)
                    
            }
            .frame(width: 100, height: 100)
            HStack{
                Image(systemName: "leaf")
                Text(String(item.point))
                    .fontWeight(.medium)
            }
            .opacity(0.7)
        }
        .padding(.bottom, 15)
        
        
    }
}

struct ItemCardRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemCardRow(item: items[0])
    }
}
