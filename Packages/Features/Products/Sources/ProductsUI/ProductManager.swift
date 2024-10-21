//
//  ProductManager.swift
//  Products
//
//  Created by Ömer Hamid Kamışlı on 10/20/24.
//

import ProductsProtocol
import SwiftUI

public struct ProductManager: ProductsManagerProtocol {
    public init() {}
    
    @MainActor public func getProductRootView() -> AnyView {
        AnyView(ProductHomePageView())
    }
}
