//
//  ProductsManagerProtocol.swift
//  Products
//
//  Created by Ömer Hamid Kamışlı on 10/4/24.
//

import SwiftUI

public protocol ProductsManagerProtocol {
    @MainActor func getProductRootView() -> AnyView
}
