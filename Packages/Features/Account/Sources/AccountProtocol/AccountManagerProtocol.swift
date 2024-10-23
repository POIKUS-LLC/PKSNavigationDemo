//
//  AccountManagerProtocol.swift
//  Account
//
//  Created by Ömer Hamid Kamışlı on 10/19/24.
//

import SwiftUI

public protocol AccountManagerProtocol {
    @MainActor func getUserAvatar() -> AnyView
}

