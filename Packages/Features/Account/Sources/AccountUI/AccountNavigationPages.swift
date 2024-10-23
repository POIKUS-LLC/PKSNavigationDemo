//
//  AccountNavigationPages.swift
//  Account
//
//  Created by Ömer Hamid Kamışlı on 10/19/24.
//


import PKSNavigation
import SwiftUI

enum AccountNavigationPages: PKSPage {
    case detail
    case deeper
    
    @MainActor
    var body: some View {
        switch self {
        case .detail:
            AccountDetailsView()
        case .deeper:
            AccountDetailsDeeperNavigationView()
        }
    }
    
    var description: String {
        switch self {
        case .detail:
            "AccountNavigationPages.detail"
        case .deeper:
            "AccountNavigationPages.deeper"
        }
    }
}
