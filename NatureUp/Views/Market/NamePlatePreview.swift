//
//  NamePlatePreview.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/13.
//

import SwiftUI

struct NamePlatePreview: View {
    var item: Item
    @State var effect: String
    @State var border: String
    @State var background: String
    @State var accessory: String
    
    
    var body: some View {
        VStack {
            ZStack {
                Image(effect)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(background)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("PName")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(border)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(accessory)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.screenWidth/5)
                    .offset(y: -UIScreen.screenWidth/18)
            }
            .aspectRatio(contentMode: .fit)
        }
    }
}

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

struct NamePlatePreview_Previews: PreviewProvider {
    static var previews: some View {
        NamePlatePreview(item: items[0], effect: "Effect_1", border: "Border_1", background: "Background_1", accessory: "Accessory_1")
    }
}
