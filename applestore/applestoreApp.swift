//
//  applestoreApp.swift
//  applestore
//
//  Created by Ömer Hamid Kamışlı on 9/27/24.
//

import SwiftUI
import PKSTheme
import PKSDependencyEngine
import OnboardingProtocol
import OnboardingUI
import PKSNavigation

@main
struct applestoreApp: App {
    @PKSRegisterDependency var onboardingManager: OnboardingManagerProtocol = OnboardingManager()
    @State var isLoaded: Bool = false
    
    
    var body: some Scene {
        WindowGroup {
            if !isLoaded {
                SplashScreenView(isLoaded: $isLoaded)
            } else {
                RootView()
            }
        }
        
    }
}
