//
//  ContentView.swift
//  CYAIProject
//
//  Created by 舞极灵瞳 on 2024/9/10.
//

import SwiftUI



struct ContentView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @State private var selectedIndex = Tab.dialog
    
    enum Tab : Int {
    case dialog,discover,notification,mine
    }
    
    var body: some View {
        
        TabView (selection: $selectedIndex){
            CYDialogueView()
                .tabItem {
                  CYTabItem(texts: ["对话","对话"], 
                            imageNames: ["icon_dialog_selected","icon_dialog_unSelect"],
                            isSelected: selectedIndex == .dialog,
                            foreColors: [tabBarSelectedColor,tabBarSelectedColor])
                }.tag(Tab.dialog)
            CYDiscoverView()
                .tabItem {
                    CYTabItem(texts: ["发现","发现"], 
                              imageNames: ["icon_discover_unSelect","icon_discover_selected"],
                              isSelected: selectedIndex == Tab.discover,
                              foreColors: [tabBarSelectedColor,tabBarSelectedColor])
                }.tag(1)
            CYNotificationView()
                .tabItem {
                    CYTabItem(texts: ["通知","通知"], 
                              imageNames: ["icon_notifi_unSelect","icon_notifi_selected"],
                              isSelected: selectedIndex == Tab.notification,
                              foreColors: [tabBarSelectedColor,tabBarSelectedColor])
                }.tag(2)
            CYMineView()
                .tabItem {
                    CYTabItem(texts: ["我1的","我的"],
                              imageNames: ["icon_mine_unSelect","icon_mine_selected"],
                              isSelected: selectedIndex == Tab.mine,
                              foreColors: [tabBarSelectedColor,tabBarSelectedColor])
                }.tag(3)
        }
        .background(Color.white)
        .lineSpacing(0.5)
    }
}

struct CYTabItem: View {
    var texts: [String]
    var imageNames: [String]
    @State var isSelected: Bool
    var foreColors: [Color]
    
    var body: some View {
        VStack {
            Image(isSelected ? imageNames[0] : imageNames[1])
                .resizable()
                .scaledToFit()
                .frame(width: 12,height: 12)
                
            Text(isSelected ? texts[0] : texts[1])
                        .foregroundColor(isSelected ? foreColors[0] : foreColors[1])
                }
    }
    
}

#Preview {
    ContentView()
}
