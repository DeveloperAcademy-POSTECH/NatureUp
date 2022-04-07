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
        VStack {
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                    .border(Color.green, width:3)
                    .frame(width:135, height:40)
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                    .border(Color.green, width:3)
                    .frame(width:135, height:40)
            }.padding()
            RoundedRectangle(cornerRadius : 10)
                .fill(Color.green)
                .frame(width:280, height:80)
            Picker(selection: $selectedNum, label: Text("Item List")) {
                Text("테두리")
                    .tag(1)
                Text("보석 장식")
                    .tag(2)
                Text("리본")
                    .tag(3)
                Text("기타")
                    .tag(4)
            }.pickerStyle(SegmentedPickerStyle())
                .padding()
            if (selectedNum == 1){
                ItemList1()
            }
            Spacer()
        }

    }
}

struct MarketView_Previews: PreviewProvider {
    static var previews: some View {
        MarketView()
    }
}
