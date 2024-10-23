//
//  AccountManager.swift
//  Account
//
//  Created by Ömer Hamid Kamışlı on 10/19/24.
//

import AccountProtocol
import SwiftUI

public struct AccountManager: AccountManagerProtocol {
    public init() {
        
    }
    @MainActor public func getUserAvatar() -> AnyView {
        AnyView(UserAvatar(initials: "OK"))
    }

}
