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
import ProductsProtocol
import ProductsUI
import AccountProtocol
import AccountUI

@main
struct applestoreApp: App {
    @PKSRegisterDependency var accountManager: AccountManagerProtocol = AccountManager()
    @PKSRegisterDependency var onboardingManager: OnboardingManagerProtocol = OnboardingManager()
    @PKSRegisterDependency var productManager: ProductsManagerProtocol = ProductManager()
    
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
