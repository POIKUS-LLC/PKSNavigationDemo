//
//  AccountDevApp.swift
//  AccountDev
//
//  Created by Ömer Hamid Kamışlı on 10/2/24.
//

import SwiftUI
import AccountUI
import PKSNavigation

@main
struct AccountDevApp: App {
    @StateObject var rootNavigationManager: PKSNavigationManager = .init(identifier: "Account")
    
    var body: some Scene {
        WindowGroup {
            PKSNavigationContainer(
                navigationManager: rootNavigationManager
            ) {
                
                UserAvatar(initials: "JS")
            }
            
        }
    }
}
