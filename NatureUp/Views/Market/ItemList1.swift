//
//  ItemList1.swift
//  NatureUp
//
//  Created by HWANG-C-K on 2022/04/06.
//

import SwiftUI

struct ItemList1: View {
    var body: some View {
        ScrollView {
            LazyVStack (alignment: .center) {
                ForEach(1...10, id:\.self) { i in
                    HStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color("SecondGreen"), lineWidth: 3)
                                        .frame(width:100, height:100)
                            RoundedRectangle(cornerRadius:10)
                                .fill(Color.white)
                                .frame(width:100, height:100)
                        }
                        Spacer()
                            .frame(width:20)
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color("SecondGreen"), lineWidth: 3)
                                        .frame(width:100, height:100)
                            RoundedRectangle(cornerRadius:10)
                                .fill(Color.white)
                                .frame(width:100, height:100)
                        }
                        Spacer()
                            .frame(width:20)
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color("SecondGreen"), lineWidth: 3)
                                        .frame(width:100, height:100)
                            RoundedRectangle(cornerRadius:10)
                                .fill(Color.white)
                                .frame(width:100, height:100)
                        }
                    }.padding()
                    
                }
            }
        }
    }
}

struct ItemList1_Previews: PreviewProvider {
    static var previews: some View {
        ItemList1()
    }
}
