//
//  ActivityList.swift
//  NatureUp
//
//  Created by Wonhyuk Choi on 2022/04/07.
//

import SwiftUI

struct ActivityList: View {
    @State var selection: Int? = nil
    let location: String
    @Binding var rootIsActive : Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(location)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("PrimaryGreen"))
                NavigationLink(destination: LocationListView(location: location), tag: 1, selection: $selection) {
                    Button(action: {
                        self.selection = 1
                    }) {
                        Image(systemName: "chevron.forward")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color("PrimaryGreen"))
                            .frame(width: 20.0, height: 20.0)
                    }
                }
            }
            NavigationLink(destination: AuthenticationView(rootIsActive: $rootIsActive), isActive: $rootIsActive) {
                Button(action: {self.rootIsActive = true}) {
                    ActivityRow(activityName: "쓰레기 분리수거 하기")
                }
            }
            NavigationLink(destination: AuthenticationView(rootIsActive: $rootIsActive), isActive: $rootIsActive) {
                Button(action: {self.rootIsActive = true}) {
                    ActivityRow(activityName: "건물 내 쓰레기 줍기")
                }
            }
            NavigationLink(destination: AuthenticationView(rootIsActive: $rootIsActive), isActive: $rootIsActive) {
                Button(action: {self.rootIsActive = true}) {
                    ActivityRow(activityName: "수도꼭지 잠그기")
                }
            }
        }
        .padding()
    }
}

struct ActivityList_Previews: PreviewProvider {
    static var previews: some View {
        ActivityList(location: "당신이 있는 건물 내", rootIsActive: .constant(true))
    }
}
