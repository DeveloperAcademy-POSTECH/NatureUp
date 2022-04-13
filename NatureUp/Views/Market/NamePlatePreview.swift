//
//  NamePlatePreview.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/13.
//

import SwiftUI

struct NamePlatePreview: View {
    @Binding var effect: String
    @Binding var border: String
    @Binding var background: String
    @Binding var accessory: String
    
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
        NamePlatePreview(
            effect: .constant("Effect_1"),
            border: .constant("Border_1"),
            background: .constant("Background_1"),
            accessory: .constant("Accessory_1")
        )
    }
}
