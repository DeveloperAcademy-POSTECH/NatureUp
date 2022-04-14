//
//  ProfileEditor.swift
//  NatureUp
//
//  Created by Minyoung Kim on 2022/04/12.
//

import SwiftUI

struct ProfileEditor: View {
    
    @State var username: String = ""
    @State private var status = true
    @State private var showingAlert = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack{
        List {
            VStack {
                Text("Profile")
                    .font(.title)
                    .fontWeight(.bold)
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
                
                Toggle(isOn: $status) {
                    Text("Enable Notification")
                        .fontWeight(.bold)
                        .padding(.all, 3)
                }
            }
            
        }
            
            Button(action: {
                self.showingAlert.toggle()
            }) {
                Text("Save")
                    .padding(.all, 5)
                    .alert(isPresented: $showingAlert) {
                        Alert(title: Text("저장하시겠습니까?"), message: Text("취소 버튼을 누르면 저장되지 않습니다."), primaryButton: .destructive(Text("취소"), action: {
                        }), secondaryButton: .cancel(Text("저장"), action: {presentationMode.wrappedValue.dismiss()}))
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
