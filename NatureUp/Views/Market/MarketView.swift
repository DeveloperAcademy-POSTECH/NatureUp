//
//  MarketView.swift
//  NatureUp
//
//  Created by HWANG-C-K on 2022/04/06.
//

import SwiftUI

struct MarketView: View {
    @State private var selectedNum = 1
    @State private var pickerColer = Color(.sRGB, red: 0.2510, green: 0.7804, blue: 0.5217)
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("BackgroundGray")
                    .navigationBarTitle("상점", displayMode: .inline)
                VStack {
                    HStack {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color("SecondGreen"), lineWidth: 2)
                                        .frame(width:150, height:40)
                            RoundedRectangle(cornerRadius:10)
                                .fill(Color("SecondGreen"))
                                .opacity(0.1)
                                .frame(width:150, height:40)
                            Text("포인트 : 100pt")
                        }
                        Spacer()
                            .frame(width:30)
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color("SecondGreen"), lineWidth: 2)
                                        .frame(width:150, height:40)
                            RoundedRectangle(cornerRadius:10)
                                .fill(Color("SecondGreen"))
                                .opacity(0.1)
                                .frame(width:150, height:40)
                            Text("경험치 : 100exp")
                        }
                    }.padding()
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("SecondGreen"), lineWidth: 3)
                                    .frame(width:330, height:90)
                        RoundedRectangle(cornerRadius : 10)
                            .fill(Color.white)
                            .frame(width:330, height:90)
                    }
                    
                    
                    Picker(selection: $selectedNum, label: Text("Item List")) {
                        Text("테두리")
                            .tag(1)
                        Text("보석 장식")
                            .tag(2)
                        Text("리본")
                            .tag(3)
                        Text("기타")
                            .tag(4)
                    }.pickerStyle   (SegmentedPickerStyle())
                        .padding()
                    if (selectedNum == 1){
                        ItemList1()
                    }
                    else if (selectedNum == 2){
                        ItemList2()
                    }
                    else if (selectedNum == 3){
                        ItemList3()
                    }
                    else if (selectedNum == 4){
                        ItemList4()
                    }
                    Spacer()
                }
            }
        }
    }
}

struct MarketView_Previews: PreviewProvider {
    static var previews: some View {
        MarketView()
    }
}
