//
//  AccountDetails.swift
//  Account
//
//  Created by Ömer Hamid Kamışlı on 10/19/24.
//

import SwiftUI
import AccountProtocol
import PKSNavigation

struct AccountDetailsView: View {
    @Environment(\.pksDismiss) private var dismiss
    @EnvironmentObject var navigationManager: PKSNavigationManager
    
    @StateObject var viewModel: AccountViewModel = AccountViewModel()
    
    
    var body: some View {
        NavigationStack {
            List {
                userInfoSection
                accountFeaturesSection
                paymentShippingSection
                helpSection
                legalSection
                    .listRowBackground(Color.clear)
                    .listRowSeparator(.hidden)
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Account")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") {
                        dismiss()
                    }
                }
            }
        }
    }
    
    private var userInfoSection: some View {
        HStack {
            ZStack {
                Circle()
                    .fill(Color.secondary.opacity(0.2))
                
                Text(viewModel.userInitials)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
            }
            .frame(width: 60, height: 60)
            
            VStack(alignment: .leading) {
                Text(viewModel.userName)
                    .font(.headline)
                Text(viewModel.userEmail)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
        .padding(.vertical)
    }
    
    private var accountFeaturesSection: some View {
        Section {
            ForEach(AccountFeature.allCases) { feature in
                Button {
                    navigationManager.navigate(to: AccountNavigationPages.deeper)
                } label: {
                    HStack {
                        Text(feature.rawValue)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .font(.caption)
                            .fontWeight(.heavy)
                            .foregroundStyle(Color.init(uiColor: .systemGray3))
                    }
                }
                .foregroundStyle(.black)
            }
        }
    }
    
    private var paymentShippingSection: some View {
        Section {
            ForEach(PaymentShippingOption.allCases) { option in
                Button {
                    navigationManager.navigate(to: AccountNavigationPages.deeper)
                } label: {
                    HStack {
                        Text(option.rawValue)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .font(.caption)
                            .fontWeight(.heavy)
                            .foregroundStyle(Color.init(uiColor: .systemGray3))
                    }
                }
                .foregroundStyle(.black)
            }
        }
    }
    
    private var helpSection: some View {
        Section {
            Button {
                navigationManager.navigate(to: AccountNavigationPages.deeper)
            } label: {
                HStack {
                    Text("Get Help")
                    Spacer()
                    Image(systemName: "chevron.right")
                        .font(.caption)
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.init(uiColor: .systemGray3))
                }
            }
            .foregroundStyle(.black)
        }
    }
    
    private var legalSection: some View {
        Section {
            ForEach(LegalLink.allCases) { link in
                Link(link.rawValue, destination: URL(string: "https://apple.com")!) // Replace with actual URLs
                    .foregroundColor(.blue)
            }
            
            Text("Copyright © 2024 Apple Inc. All rights reserved.")
                .font(.footnote)
                .foregroundColor(.secondary)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top)
        }
    }
}

// MARK: - Supporting Types

enum AccountFeature: String, CaseIterable, Identifiable {
    case reservations = "Reservations"
    case orders = "Orders"
    case devices = "Devices"
    case services = "Services"
    case saves = "Your Saves"
    
    var id: String { self.rawValue }
    

}

enum PaymentShippingOption: String, CaseIterable, Identifiable {
    case primaryPayment = "Primary Payment"
    case primaryShipping = "Primary Shipping"
    case selfCheckoutReceipts = "Self-Checkout Receipts"
    case giveFeedback = "Give Feedback"
    case settings = "Settings"
    
    var id: String { self.rawValue }
    
}

enum LegalLink: String, CaseIterable, Identifiable {
    case salesAndRefund = "Apple Sales and Refund Policy"
    case faq = "Frequently Asked Questions (FAQ)"
    case acknowledgements = "Acknowledgements"
    case privacyPolicy = "Apple Privacy Policy"
    case dataManagement = "See How Your Data is Managed"
    
    var id: String { self.rawValue }
}

// MARK: - Preview

struct AccountDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PKSNavigationContainer(navigationManager: PKSNavigationManager()){
            AccountDetailsView()
        }
    }
}
