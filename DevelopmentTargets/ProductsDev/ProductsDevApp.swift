//
//  ProductsDevApp.swift
//  ProductsDev
//
//  Created by Ömer Hamid Kamışlı on 10/4/24.
//

import SwiftUI
import ProductsUI
import PKSDependencyEngine
import AccountProtocol
import AccountUI
import PKSNavigation

@main
struct ProductsDevApp: App {
    @PKSRegisterDependency var accountManager: AccountManagerProtocol = AccountManager()
    @StateObject var navigationManager: PKSNavigationManager = PKSNavigationManager()
    
    var body: some Scene {
        WindowGroup {
            PKSNavigationContainer(navigationManager: navigationManager) {
                ProductHomePageView()
            }
        }
    }
}
