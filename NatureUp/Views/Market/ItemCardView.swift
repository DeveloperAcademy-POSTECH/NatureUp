//
//  ItemCardView.swift
//  NatureUp
//
//  Created by HWANG-C-K on 2022/04/11.
//

import SwiftUI

struct ItemCardView: View {
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color("SecondGreen"), lineWidth: 1)
                .frame(width:100, height:100)
            RoundedRectangle(cornerRadius:10)
                .fill(Color.white)
                .frame(width:100, height:100)
        }
    }
}

struct ItemCardView_Previews: PreviewProvider {
    static var previews: some View {
        ItemCardView()
    }
}
