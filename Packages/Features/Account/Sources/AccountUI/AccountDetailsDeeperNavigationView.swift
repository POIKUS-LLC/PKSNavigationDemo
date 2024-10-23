//
//  AccountDetailsDeeperNavigationView.swift
//  Account
//
//  Created by Ömer Hamid Kamışlı on 10/19/24.
//

import SwiftUI
import PKSNavigation

struct AccountDetailsDeeperNavigationView: View {
    @Environment(\.pksDismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("This view is just a placeholder for deeper navigation. This project is showing the PKSNavigationManager in action. Some of the views are not implemented yet.")
                .padding()
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .fontWeight(.heavy)
                
            
            Button("Dismiss View") {
                dismiss()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .toolbar(.hidden)
    }
}

#Preview {
    AccountDetailsDeeperNavigationView()
}
