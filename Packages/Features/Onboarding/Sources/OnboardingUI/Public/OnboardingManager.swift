//
//  OnboardingManager.swift
//  Onboarding
//
//  Created by Ömer Hamid Kamışlı on 9/30/24.
//

import SwiftUI
import PKSNavigation
import OnboardingProtocol

public class OnboardingManager: OnboardingManagerProtocol {
    public init() {}
    
    @MainActor public func getOnboardingEntryView() -> AnyView {
        AnyView(WelcomeView())
    }
}
