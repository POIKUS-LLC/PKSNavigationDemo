//
//  UserAvatar.swift
//  Account
//
//  Created by Ömer Hamid Kamışlı on 10/19/24.
//

import SwiftUI
import PKSNavigation

public struct UserAvatar: View {
    @State var showSheet: Bool = false
    @EnvironmentObject var navigationManager: PKSNavigationManager
    @StateObject private var accountNavigationManager: PKSNavigationManager = PKSNavigationManager(identifier: "Account Navigation Manager")
    
    private let initials: String
    
    public init(initials: String) {
        self.initials = initials
    }
    
    public var body: some View {
        ZStack {
            Color.clear
                .frame(width: 1, height: 1)
                .modalNavigationStackManager(navigationManager: accountNavigationManager)
            Circle()
                .fill(Color.secondary.opacity(0.2))
            
            Text(initials)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
        }
        .frame(width: 60, height: 60)
        .contentShape(Rectangle())
        .onTapGesture {
            accountNavigationManager.navigate(to: AccountNavigationPages.detail, presentation: .sheet)
        }
        .task {
            accountNavigationManager.setParent(navigationManager)
        }
    }
}

#Preview {
    PKSNavigationContainer(navigationManager: PKSNavigationManager()) {
        UserAvatar(initials: "OK")
    }
}
