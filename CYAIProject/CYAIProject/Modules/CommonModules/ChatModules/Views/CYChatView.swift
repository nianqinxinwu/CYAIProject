//
//  CYChatView.swift
//  CYAIProject
//
//  Created by 舞极灵瞳 on 2024/9/10.
//

import SwiftUI

struct CYChatView: View {
    
    let item: MineListItem
    var body: some View {
        Text(item.title)
        Image(item.icon)
          .renderingMode(.original)
          .resizable()
          .scaledToFit()
          .frame(width: 80, height: 80, alignment: .center)
          .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2 )
          .background(LinearGradient(gradient: Gradient(colors: item.gradientColors), startPoint: .top, endPoint: .bottom))
          .cornerRadius(8)
    }
}

#Preview {
    
    CYChatView(item: MineListItem(icon: "冬瓜", title: "创业分析师", gradientColors: [Color("Color-冬瓜-Light"), Color("Color-冬瓜-Dark")], content: "你是创业前期了解创业成本的好助手", itemState: .hot))
}
