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
        ZStack {
            ItemCardView()
            item.image
                .resizable()
                .frame(width: 80, height: 15.36)
        }.padding(.bottom, 10)
    }
}

struct ItemCardRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemCardRow(item: items[0])
    }
}
