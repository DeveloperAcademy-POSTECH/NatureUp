//
//  ItemCardList.swift
//  NatureUp
//
//  Created by HWANG-C-K on 2022/04/11.
//

import SwiftUI

struct ItemCardList: View {
    var ItemType: String
    var body: some View {
        ScrollView {
            LazyVGrid(columns: Array(repeating: .init(.flexible(), spacing:-5), count: 3)) {
                ForEach(items.filter({$0.type == ItemType})){ item in
                    Button(action: {}, label: {
                        ItemCardRow(item: item)
                    })
                }
            }.padding(.vertical, 10)
        }
    }
}

struct ItemCardList_Previews: PreviewProvider {
    static var previews: some View {
        ItemCardList(ItemType: "border")
    }
}
