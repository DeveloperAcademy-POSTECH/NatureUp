//
//  MarketView.swift
//  NatureUp
//
//  Created by HWANG-C-K on 2022/04/06.
//

import SwiftUI

struct MarketView: View {
    let exp = 700
    let pnt = 150
    @State private var ItemType = "border"
    @State private var selectedNum = 1
    @State private var pickerColer = Color(.sRGB, red: 0.2510, green: 0.7804, blue: 0.5217)
    
    var body: some View {
        ZStack{
            Color("BackgroundGray")
            VStack {
                HStack {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("SecondGreen"), lineWidth: 2)
                            .frame(width:150, height:40)
                        RoundedRectangle(cornerRadius:10)
                            .fill(Color("SecondGreen"))
                            .opacity(0.05)
                            .frame(width:150, height:40)
                        HStack{
                            Image(systemName: "leaf.fill")
                                .foregroundColor(Color("PrimaryGreen"))
                            Text(String("\(pnt)"))
                                .fontWeight(.heavy)
                        }
                        
                    }
                    Spacer()
                        .frame(width:30)
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("SecondGreen"), lineWidth: 2)
                            .frame(width:150, height:40)
                        RoundedRectangle(cornerRadius:10)
                            .fill(Color("SecondGreen"))
                            .opacity(0.05)
                            .frame(width:150, height:40)
                        HStack{
                            Image(systemName:"sparkles")
                                .foregroundColor(Color("PrimaryGreen"))
                            Text(String("\(exp)"))
                                .fontWeight(.heavy)
                        }
                        
                    }
                }.padding()
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("SecondGreen"), lineWidth: 3)
                        .frame(width:330, height:90)
                    RoundedRectangle(cornerRadius : 10)
                        .fill(Color.white)
                        .frame(width:330, height:90)
                    Image("userName1")
                }
                
                
                Picker(selection: $selectedNum, label: Text("Item List")) {
                    Text("테두리")
                        .tag(1)
                    Text("장식")
                        .tag(2)
                    Text("배경")
                        .tag(3)
                    Text("효과")
                        .tag(4)
                }.pickerStyle   (SegmentedPickerStyle())
                    .padding()
                if (selectedNum == 1){
                    ItemCardList(ItemType: "border")
                }
                else if (selectedNum == 2){
                    ItemCardList(ItemType:"decoration")
                }
                else if (selectedNum == 3){
                    ItemCardList(ItemType:"background")
                }
                else if (selectedNum == 4){
                    ItemCardList(ItemType: "effect")
                }
                Spacer()
            }
        }
    }
}

struct MarketView_Previews: PreviewProvider {
    static var previews: some View {
        MarketView()
    }
}
