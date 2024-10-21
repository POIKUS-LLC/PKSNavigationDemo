//
//  ManagingDataDetailView.swift
//  Onboarding
//
//  Created by Ömer Hamid Kamışlı on 9/28/24.
//

import SwiftUI
import PKSNavigation
import PKSTheme

struct ManagingDataDetailView: View {
    var model: DataRowModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: PKSTheme.padding.base) {
            
            Header()
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Text(model.title)
                        .font(.title)
                        .padding(.bottom)
                    Text(model.description)
                        .font(.headline)
                    Text(model.detail)
                        .font(.body)
                }
            }
        }
        .padding()
        .toolbar(.hidden)
    }
}

struct Header: View {
    @Environment(\.pksDismiss) var dismiss
    
    var body: some View {
        HStack {
            Image(systemName: "chevron.left")
                .font(.headline)
                .fontWeight(.bold)
            Text("How we use your data?")
                .font(.headline)
                .foregroundColor(.primary)
            
        }
        .contentShape(Rectangle())
        .onTapGesture {
            dismiss()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}


#Preview {
    ManagingDataDetailView(
        model: DataRowModel(
            icon: "shield",
            title: "Device Security",
            description: "Assess the security status of your devices, including passcode strength and encryption.",
            detail: """
            **Security Overview:**
            ~Evaluate the overall security~ posture of your devices by reviewing settings such as passcode strength, encryption status, and security updates. Ensuring robust security measures protects your data from unauthorized access.

            **Passcode and Authentication:**
            Implement strong passcodes and utilize biometric authentication methods like Face ID or Touch ID. Regularly updating your authentication methods enhances the security of your devices against potential breaches.

            **Encryption and Data Protection:**
            Ensure that your device data is encrypted to safeguard sensitive information. Encryption prevents data theft and ensures that your personal and professional information remains confidential even if your device is lost or stolen.
            """
        )
    )
    .environmentObject(PKSNavigationManager())
}
