//
//  ProfileEditor.swift
//  NatureUp
//
//  Created by Minyoung Kim on 2022/04/12.
//

import SwiftUI

struct ProfileEditor: View {
    
    @State var username: String = ""
    
    var body: some View {
        VStack{
        List {
            VStack {
                Text("Profile Picture")
                    .bold()
                    .padding()
                
                ProfilePicture()
                    .padding(.bottom)
                
                Divider()
                    .frame(width: 320, height: 0.3)
                
                
                HStack{
                    Text("Username")
                        .fontWeight(.bold)
                        .padding(.all, 3)
                    
                    Divider()
                    TextField("Enter your Username", text: $username)
                    
                }
                
                Divider()
                    .frame(width: 320, height: 0.3)
                
                Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                    Text("Enable Notification")
                        .fontWeight(.bold)
                        .padding(.all, 3)
                }
            }
            
        }
        Button(action: {
        }, label: {
            Text("Save")
                .fontWeight(.bold)
                .padding(.all, 5)
        })
        }
    }
    
    struct ProfileEditor_Previews: PreviewProvider {
        static var previews: some View {
            ProfileEditor()
        }
    }
    
}
