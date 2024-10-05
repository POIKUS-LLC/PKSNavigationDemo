//
//  AppNavigationDestinations.swift
//  applestore
//
//  Created by Ömer Hamid Kamışlı on 9/29/24.
//

import PKSNavigation
import SwiftUI

public struct OnboardingDevNavigationDestinations: ViewModifier {
    @ObservedObject var navigationManager: PKSNavigationManager

    public init(navigationManager: PKSNavigationManager) {
        self._navigationManager = ObservedObject(wrappedValue: navigationManager)
    }
    
    public func body(content: Content) -> some View {
        content
    }
}
