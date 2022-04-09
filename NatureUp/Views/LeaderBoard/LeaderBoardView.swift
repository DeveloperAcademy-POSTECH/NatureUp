//
//  LeaderBoardView.swift
//  NatureUp
//
//  Created by Shin yongjun on 2022/04/08.
//

import SwiftUI

struct LeaderBoardView: View {
    
    let no: String  = "10"
    let point: String = "100"
    var body: some View {
        ZStack {
            Color("BackgroundGray")
            ScrollView {
                VStack(spacing: -10) {
                    HStack {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color("SecondGreen"), lineWidth: 2)
                                .frame(width:150, height:40)
                            RoundedRectangle(cornerRadius:10)
                                .fill(Color("SecondGreen"))
                                .opacity(0.1)
                                .frame(width:150, height:40)
                            Text("내등수 :  \(no)")
                        }
                        Spacer()
                            .frame(width:30)
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color("SecondGreen"), lineWidth: 2)
                                .frame(width:150, height:40)
                            RoundedRectangle(cornerRadius:10)
                                .fill(Color("SecondGreen"))
                                .opacity(0.1)
                                .frame(width:150, height:40)
                            Text("포인트 : \(point)")
                        }
                    }.padding()
                    
                    VStack(spacing: -20) {
                        VStack {
                            Image("no1")
                                .resizable()
                                .frame(width: 40, height: 40, alignment: .center)
                            Image("user1")
                                .resizable()
                                .frame(width: 150, height: 150)
                                .clipShape(Circle())
                                .shadow(radius: 10)
                                .overlay(Circle().stroke(Color.gray, lineWidth: 7))
                            Image("userName1")
                                .resizable()
                                .frame(width: 150, height: 40, alignment: .center)
                        }
                        
                        
                        HStack() {
                            VStack {
                                Image("no2")
                                    .resizable()
                                    .frame(width: 40, height: 40, alignment: .center)
                                Image("user1")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .clipShape(Circle())
                                    .shadow(radius: 10)
                                    .overlay(Circle().stroke(Color.gray, lineWidth: 7))
                                Image("userName1")
                                    .resizable()
                                    .frame(width: 150, height: 40, alignment: .center)
                            }
                            
                            Spacer()
                            
                            VStack {
                                Image("no3")
                                    .resizable()
                                    .frame(width: 40, height: 40, alignment: .center)
                                Image("user1")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .clipShape(Circle())
                                    .shadow(radius: 10)
                                    .overlay(Circle().stroke(Color.gray, lineWidth: 7))
                                Image("userName1")
                                    .resizable()
                                    .frame(width: 150, height: 40, alignment: .center)
                            }
                            
                            
                        }
                        .padding()
                        LeaderBoardRow()
                    }
                }
            }
        }
    }
}

struct LeaderBoardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderBoardView()
    }
}
