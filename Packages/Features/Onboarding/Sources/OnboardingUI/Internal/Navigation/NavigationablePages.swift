//
//  NavigationablePages.swift
//  Onboarding
//
//  Created by Ömer Hamid Kamışlı on 9/28/24.
//

import PKSNavigation
import SwiftUI

enum OnboardingNavigationPages: PKSPage {
    case privacySettings
    case howManagingDatas
    case setupNotifications
    case managingDetail(model: DataRowModel)
    
    @MainActor
    var body: some View {
        switch self {
        case .privacySettings:
            PrivacySettingsView()
        case .howManagingDatas:
            HowManagingDatasView()
        case .setupNotifications:
            SetupNotificationsView()
        case .managingDetail(let model):
            ManagingDataDetailView(model: model)
        }
    }
    
    var description: String {
        switch self {
        case .howManagingDatas:
            return "Data Management Page"
        case .privacySettings:
            return "Privacy Settings Page"
        case .setupNotifications:
            return "Setup Notifications Page"
        case .managingDetail:
            return "Managing Data Detail Page"
        }
    }
}
