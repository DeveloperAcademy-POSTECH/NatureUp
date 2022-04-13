//
//  MarketView.swift
//  NatureUp
//
//  Created by HWANG-C-K on 2022/04/06.
//

import SwiftUI

struct MarketView: View {
    
    @ObservedObject var userVM = UserViewModel()
    let myId = "cVP4ck6CvPzRaOp4NE7c"
    
    init() {
        userVM.getUser(id: myId)
    }
    
    let exp = 700
    let pnt = 150
    @State private var ItemType = "border"
    @State private var selectedNum = 1
    @State private var pickerColer = Color(.sRGB, red: 0.2510, green: 0.7804, blue: 0.5217)
    
    var item: Item?
    
    
    var body: some View {
        ZStack{
            Color("BackgroundGray")
                .ignoresSafeArea()
            VStack {
                HStack {
                    Spacer()
                    ZStack{
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color("SecondGreen"), lineWidth: 1)
                            .frame(width:100, height:30)
                        RoundedRectangle(cornerRadius:5)
                            .fill(Color("SecondGreen"))
                            .opacity(0.05)
                            .frame(width:100, height:30)
                        HStack{
                            Image(systemName: "leaf.fill")
                                .foregroundColor(Color("PrimaryGreen"))
                            Text(String("\(userVM.user.points)"))
                                .fontWeight(.medium)
                        }
                        
                    }
                }.padding([.top, .trailing])
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("SecondGreen"), lineWidth: 2)
                        .aspectRatio(3.5, contentMode: .fit)
                    RoundedRectangle(cornerRadius : 10)
                        .fill(Color.white)
                        .aspectRatio(3.5, contentMode: .fit)
                    NamePlatePreview(item: item!, effect: "Effect_1", border: "Border_1", background: "Background_1", accessory: "Accessory_1")
                }
                .padding()
                
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
                    ItemCardList(ItemType:"accessory")
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
