//
//  OnboardingDevApp.swift
//  OnboardingDev
//
//  Created by Ömer Hamid Kamışlı on 9/27/24.
//

import SwiftUI
import OnboardingUI
import PKSNavigation


@main
struct OnboardingDevApp: App {
    @StateObject var rootNavigationManager: PKSNavigationManager = .init(identifier: "Onboarding")
    
    var body: some Scene {
        WindowGroup {
            PKSNavigationContainer(
                navigationManager: rootNavigationManager
            ) {
                WelcomeView()
            }
            
        }
    }
}
