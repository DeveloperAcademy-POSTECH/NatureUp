//
//  AlertList.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/12.
//

import SwiftUI

struct AlertList: View {
    var body: some View {
        HStack{
            Image("Everett")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(width: 50, height: 50)
                .padding()
            Text("분리수거 활동이 거부되었습니다")
        }
    }
}

struct AlertList_Previews: PreviewProvider {
    static var previews: some View {
        AlertList()
    }
}
