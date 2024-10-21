//
//  ForYouRootView.swift
//  applestore
//
//  Created by Ömer Hamid Kamışlı on 10/1/24.
//

import SwiftUI
import PKSNavigation

struct ForYouRootView: View {
    @EnvironmentObject var navigationManager: PKSNavigationManager
    
    var body: some View {
        PKSNavigationContainer(navigationManager: navigationManager) {
            Text("Hello World")
        }
    }
}

#Preview {
    ForYouRootView()
}
