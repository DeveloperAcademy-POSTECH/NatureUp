//
//  NotificationView.swift
//  NatureUp
//
//  Created by Jung Yunseong on 2022/04/12.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        ZStack {
            Color("BackgroundGray")
                .ignoresSafeArea()
            ScrollView {
            VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("오늘")
                    .font(.system(size: 20))
                    .fontWeight(.heavy)
                    .foregroundColor(Color("PrimaryGreen"))
                HStack{
                    Image("PickingTrash")
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .frame(width: 50, height: 50)
                        .padding()
                    Text("쓰레기 줍기 활동이 정상적으로 등록되었습니다")
                }
            }
                Divider()
            VStack(alignment: .leading) {
                Text("어제")
                    .font(.system(size: 20))
                    .fontWeight(.heavy)
                    .foregroundColor(Color("PrimaryGreen"))
                HStack{
                    Image("Cheers")
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .frame(width: 50, height: 50)
                        .padding()
                    Text("계단 이용하기 활동이 랜덤평가에 의해 거부되었습니다")
                }
                HStack{
                    Image("Campaign")
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .frame(width: 50, height: 50)
                        .padding()
                    Text("캠페인 참가하기 활동이 정상적으로 등록되었습니다")
                }
            }
                Divider()
            VStack(alignment: .leading) {
                Text("이전 활동")
                    .font(.system(size: 20))
                    .fontWeight(.heavy)
                    .foregroundColor(Color("PrimaryGreen"))
                HStack{
                    Image("PublicTransportation")
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .frame(width: 50, height: 50)
                        .padding()
                    Text("대중교통 이용하기 활동이 정상적으로 등록되었습니다")
                }
                HStack{
                    Image("Dog")
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .frame(width: 50, height: 50)
                        .padding()
                    Text("수도꼭지 잠그기 활동이 랜덤평가에 의해 거부되었습니다")
                }
                HStack{
                    Image("Recycle")
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .frame(width: 50, height: 50)
                        .padding()
                    Text("재활용하기 활동이 정상적으로 등록되었습니다")
                }
                HStack{
                    Image("Sky")
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .frame(width: 50, height: 50)
                        .padding()
                    Text("음식물쓰레기 줄이기 활동이 랜덤평가에 의해 거부되었습니다")
                }
                HStack{
                    Image("UsingTumblr")
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .frame(width: 50, height: 50)
                        .padding()
                    Text("텀블러 사용하기 활동이 정상적으로 등록되었습니다")
                }
            }
            .navigationBarTitle("알림")
        }
            .padding()
        }
    }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
