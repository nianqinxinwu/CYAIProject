//
//  CYAIProjectApp.swift
//  CYAIProject
//
//  Created by 舞极灵瞳 on 2024/9/10.
//

import SwiftUI

@main
struct CYAIProjectApp: App {
    
    @State private var currentEnvironment = EnvironmentSettings(environment: .appStore)
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class EnvironmentSettings: ObservableObject {
    @Published var environment: appEnv
    
    init(environment: appEnv) {
        self.environment = environment
    }
}
