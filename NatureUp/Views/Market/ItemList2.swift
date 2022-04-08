//
//  ItemList2.swift
//  NatureUp
//
//  Created by HWANG-C-K on 2022/04/07.
//

import SwiftUI

struct ItemList2: View {
    var body: some View {
        ScrollView {
            LazyVStack (alignment: .center) {
                ForEach(1...10, id:\.self) { i in
                    HStack{
                        RoundedRectangle(cornerRadius: 10)
                                                .fill(Color.green)
                                                .frame(width:90, height:90)
                        
                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.green)
                                                .frame(width:90, height:90)
                        
                        RoundedRectangle(cornerRadius: 10)
                                                .fill(Color.green)
                                                .frame(width:90, height:90)
                    }.padding()
                    
                }
            }
        }
    }
}

struct ItemList2_Previews: PreviewProvider {
    static var previews: some View {
        ItemList2()
    }
}