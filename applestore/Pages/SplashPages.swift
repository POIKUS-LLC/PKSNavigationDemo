//
//  SplashPages.swift
//  applestore
//
//  Created by Ömer Hamid Kamışlı on 10/1/24.
//

import PKSNavigation
import PKSDependencyEngine
import SwiftUI
import OnboardingProtocol

enum SplashPages: PKSPage {
    case onboarding
    
    var body: some View {
        switch self {
        case .onboarding:
            AnyView(PKSDependencyEngine.shared.read(for: OnboardingManagerProtocol.self).getOnboardingEntryView())
                .interactiveDismissDisabled()
        }
    }
    
    var description: String {
        switch self {
        case .onboarding:
            return "Onboarding"
        }
    }
}
