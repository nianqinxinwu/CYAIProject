//
//  MineModuleModels.swift
//  CYAIProject
//
//  Created by 舞极灵瞳 on 2024/9/10.
//

import Foundation
import SwiftUI

enum minListItemEnum {
    case normal,hot
}

/// 我的页面数据
struct MineListItem: Identifiable,Hashable {
    let id = UUID()
    var icon: String
    var title: String
    var gradientColors: [Color]
    var content: String
    var itemState: minListItemEnum
}
