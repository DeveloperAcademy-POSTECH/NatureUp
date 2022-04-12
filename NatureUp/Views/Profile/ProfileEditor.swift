//
//  ProfileEditor.swift
//  NatureUp
//
//  Created by Minyoung Kim on 2022/04/12.
//

import SwiftUI

struct ProfileEditor: View {
    
    
    var body: some View {
        List {
            VStack {
                ProfilePicture()
                Divider()
                HStack{
                Text("Username").bold()
                Divider()
                NamePlate()
                
            }
                Divider()
                Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                    Text("Enable Notification").bold()
                }
                
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor()
    }
}
    
}
