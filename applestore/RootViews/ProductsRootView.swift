//
//  ProductsRootView.swift
//  applestore
//
//  Created by Ömer Hamid Kamışlı on 10/1/24.
//

import SwiftUI
import PKSNavigation
import ProductsProtocol
import PKSDependencyEngine

struct ProductsRootView: View {
    @EnvironmentObject var navigationManager: PKSNavigationManager
    @PKSDependency var productDependency: ProductsManagerProtocol
    
    var body: some View {
        PKSNavigationContainer(navigationManager: navigationManager) {
            productDependency.getProductRootView()
        }
    }
}

#Preview {
    ProductsRootView()
}
