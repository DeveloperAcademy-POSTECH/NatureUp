//
//  NamePlate.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/09.
//

import SwiftUI

struct NamePlate: View {
    var body: some View {
        Image("EverettName")
            .resizable()
            .frame(width:230, height: 70)
    }
}

struct NamePlate_Previews: PreviewProvider {
    static var previews: some View {
        NamePlate()
    }
}
