//
//  CYConfigFile.swift
//  CYAIProject
//
//  Created by 舞极灵瞳 on 2024/9/10.
//

import Foundation
import UIKit
import SwiftUI

// 宽高常量
let screenWidth = UIScreen.main.bounds.width
let screenHeight = UIScreen.main.bounds.height

// 颜色常量
let tabBarUnselectColor = Color.secondary
let tabBarSelectedColor = Color.black


enum appEnv {
    case debug
    case release
    case appStore
    
    var baseURL: URL {
        switch self {
            case .debug:
                return URL(string: "https://www.easemates.com")!
            case .release:
                return URL(string: "https://www.easemates.com")!
            default:
                return URL(string: "https://xfapi.xflip.ai")!
        }
    }
}
