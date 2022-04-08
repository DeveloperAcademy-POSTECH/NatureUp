//
//  NamePlate.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/09.
//

import SwiftUI

struct NamePlate: View {
    var body: some View {
        Image("userName1")
            .resizable()
            .frame(width:200, height: 50)
    }
}

struct NamePlate_Previews: PreviewProvider {
    static var previews: some View {
        NamePlate()
    }
}
