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
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color("SecondGreen"), lineWidth: 3)
                                        .frame(width:100, height:100)
                            RoundedRectangle(cornerRadius:10)
                                .fill(Color.white)
                                .frame(width:100, height:100)
                            
                            Image("dia")
                                .resizable()
                                .frame(width:60, height:62)
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
                            
                            Image("dia")
                                .resizable()
                                .frame(width:60, height:62)
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
                            
                            Image("dia")
                                .resizable()
                                .frame(width:60, height:62)
                        }
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
