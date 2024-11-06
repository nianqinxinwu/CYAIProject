//
//  CYMineView.swift
//  CYAIProject
//
//  Created by 舞极灵瞳 on 2024/9/10.
//

import SwiftUI

struct CYMineView: View {
    // 头像大小
    let mineHeadImgWidth = 200.0
    
    let items = [
        MineListItem(icon: "冬瓜", title: "创业分析师", gradientColors: [Color("Color-冬瓜-Light"), Color("Color-冬瓜-Dark")], content: "你是创业前期了解创业成本的好助手", itemState: .normal),
        MineListItem(icon: "胡萝卜", title: "创业师", gradientColors: [Color("Color-胡萝卜-Light"), Color("Color-胡萝卜-Dark")], content: "你是了解创业成本的好助手", itemState: .hot)
    ]
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                    .frame(height:50)
                Image(systemName: "person")
                    .resizable()
                    .frame(width: mineHeadImgWidth,height: mineHeadImgWidth)
                    .background(.gray)
                // 设置为圆形
                    .clipShape(Circle())
                Text("你好")
                    .font(.largeTitle).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("豆包号:user_qlVOTGqoVS")
                    .font(.body)
                    .foregroundStyle(.secondary)
                List{
                    ForEach(items.shuffled()) {
                        item in
                        NavigationLink {
                            // 即将跳转的页面
                            CYChatView(item: item)
                        } label: {
                            // cell
                            mineListItemCell(item: item)
                        }

                    }
                }
                .background(.white)
            }
            
        }
        .navigationTitle("我的")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button(action: {
                                       print("Settings button tapped")
                               
                                   }) {
                                       Image("icon_mine_setting")
                                   }
            }
        }
    }
}

struct mineListItemCell: View {
    let item: MineListItem
    @State private var isHot = minListItemEnum.normal
    var body: some View {
        
        HStack {
            
            Image(item.icon)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80,height: 80)
                .background(LinearGradient(gradient: Gradient(colors: item.gradientColors), startPoint: .top, endPoint: .bottom))
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2 )
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5) {
                
                HStack() {
                    Text(item.title)
                        .font(.title2).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Image(systemName: isHot == .hot ? "flame.fill" : "flame")
                        .frame(width: 16,height: 16)
                        .foregroundColor(isHot == .hot ? .red : .gray)
                }
                .frame(alignment: .leading)
                HStack {
                    Text(item.content)
                        .font(.body)
                        .foregroundStyle(.secondary)
                }
                .frame( alignment: .leading)
            }
        }
        .padding(5)
    }
    
}

struct mineListCellImgStyle: ViewModifier {
   
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .frame(width: 80,height: 80)
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2 )
            .cornerRadius(8)
    }
}

#Preview {
    CYMineView()
}
