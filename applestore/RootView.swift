//
//  RootView.swift
//  applestore
//
//  Created by Ömer Hamid Kamışlı on 9/27/24.
//

import SwiftUI
import PKSNavigation
import PKSDependencyEngine
import OnboardingProtocol

struct RootView: View {
    @StateObject var forYouTabNavigation: PKSNavigationManager = PKSNavigationManager(identifier: "ForYouTabRootNavigation")
    @StateObject var productsTabNavigation: PKSNavigationManager = PKSNavigationManager(identifier: "ProductsTabRootNavigation")
    @StateObject var goFurtherTabNavigation: PKSNavigationManager = PKSNavigationManager(identifier: "GoFurtherTabRootNavigation")
    @StateObject var searchTabNavigation: PKSNavigationManager = PKSNavigationManager(identifier: "SearchTabRootNavigation")
    @StateObject var bagTabNavigation: PKSNavigationManager = PKSNavigationManager(identifier: "BagTabRootNavigation")
    
    var body: some View {
        TabView {
            ForYouRootView()
                .environmentObject(forYouTabNavigation)
                .tabItem {
                    Label("For You", systemImage: "text.badge.star")
                }
            
            ProductsRootView()
                .environmentObject(productsTabNavigation)
                .tabItem {
                    Label("Products", systemImage: "macbook.and.iphone")
                }
            
            ForYouRootView()
                .environmentObject(goFurtherTabNavigation)
                .tabItem {
                    Label("Go Further", systemImage: "safari")
                }
            
            ForYouRootView()
                .environmentObject(searchTabNavigation)
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            
            ForYouRootView()
                .environmentObject(bagTabNavigation)
                .tabItem {
                    Label("Bag", systemImage: "bag")
                }
        }
    }
}

#Preview {
    RootView()
}
