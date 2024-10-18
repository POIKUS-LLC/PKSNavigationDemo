//
//  OnboardingManagerProtocol.swift
//  Onboarding
//
//  Created by Ömer Hamid Kamışlı on 9/30/24.
//

import SwiftUI

public protocol OnboardingManagerProtocol {
    @MainActor func getOnboardingEntryView() -> AnyView
}
