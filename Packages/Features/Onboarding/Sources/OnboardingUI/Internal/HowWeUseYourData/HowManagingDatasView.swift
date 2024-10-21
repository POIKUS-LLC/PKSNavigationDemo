//
//  HowManagingDatasView.swift
//  Onboarding
//
//  Created by Ömer Hamid Kamışlı on 9/28/24.
//

import SwiftUI
import PKSNavigation

public struct HowManagingDatasView: View {
    @EnvironmentObject var navigationManager: PKSNavigationManager
    
    var personalData: [DataRowModel] = [
        DataRowModel(
            icon: "iphone",
            title: "Your Devices",
            description: "Manage all devices linked to your account, including iPhones, iPads, Macs, and more.",
            detail: """
            **Overview:**
            Keep track of every device associated with your Apple ID. This includes iPhones, iPads, Macs, Apple Watches, and other Apple devices. Regularly reviewing your devices ensures that only authorized hardware has access to your account.

            **Managing Devices:**
            You can add or remove devices from your account. Removing a device revokes its access, which is especially useful if you've sold or lost a device. Additionally, you can view detailed information about each device, such as the device name, model, and last used date.

            **Security Benefits:**
            Monitoring your devices enhances your account's security. It helps in identifying any unauthorized access and allows you to take immediate action if a device is compromised. Ensuring that only your trusted devices are connected protects your personal data and privacy.
            """
        ),
        DataRowModel(
            icon: "magnifyingglass",
            title: "Search History",
            description: "Access and manage your past search queries and activity.",
            detail: """
            **Accessing Your Searches:**
            Your search history records all the queries you've made across various Apple services. This feature helps in quickly retrieving past searches and provides a personalized experience based on your interests.

            **Managing Your History:**
            You have full control over your search history. You can review past searches, delete specific entries, or clear your entire search history. Managing your history ensures that your data remains private and tailored to your current preferences.

            **Privacy Considerations:**
            Keeping your search history private is crucial for maintaining your confidentiality. Regularly managing your search data helps prevent unauthorized access and ensures that your personal interests and activities remain secure.
            """
        ),
        DataRowModel(
            icon: "wrench",
            title: "Subscribed Services",
            description: "Control and customize your subscribed services such as Apple Music, iCloud, and others.",
            detail: """
            **Overview of Subscriptions:**
            View all the services you've subscribed to, including Apple Music, iCloud storage plans, Apple TV+, and more. Understanding your subscriptions helps in managing your expenses and ensuring you only pay for what you use.

            **Customizing Services:**
            Adjust your subscription settings to fit your needs. This includes upgrading or downgrading plans, changing payment methods, or modifying service preferences. Customizing your subscriptions ensures optimal usage and satisfaction with the services you rely on.

            **Managing Renewal and Cancellation:**
            Stay informed about upcoming renewals and have the option to cancel subscriptions at any time. Managing renewals prevents unexpected charges, and easy cancellation processes provide flexibility if you decide to discontinue a service.
            """
        )
    ]

    // Activity Data Section
    var activityData: [DataRowModel] = [
        DataRowModel(
            icon: "globe",
            title: "Browsing Activity",
            description: "Review websites and online content you've interacted with.",
            detail: """
            **Tracking Your Activity:**
            Your browsing activity logs the websites you've visited and the content you've interacted with. This feature allows you to revisit favorite sites and monitor your online behavior for better digital habits.

            **Managing Your Data:**
            You can review detailed reports of your browsing history, including timestamps and frequently visited sites. Additionally, you have the option to delete specific entries or clear your entire browsing history to maintain your privacy.

            **Enhancing User Experience:**
            Understanding your browsing patterns helps in providing a more personalized and efficient online experience. By analyzing your activity, services can tailor content recommendations and streamline your navigation through frequently accessed sites.
            """
        ),
        DataRowModel(
            icon: "cart",
            title: "Purchase History",
            description: "Track all your past purchases made through the App Store, iTunes, and other Apple services.",
            detail: """
            **Comprehensive Tracking:**
            Your purchase history includes all transactions made across Apple platforms, such as apps, music, movies, books, and subscriptions. Keeping track of these purchases helps in managing your expenses and accessing past purchases when needed.

            **Detailed Information:**
            Each entry in your purchase history provides detailed information, including the purchase date, amount, and item description. This transparency ensures that you can verify transactions and address any discrepancies promptly.

            **Managing Refunds and Support:**
            Easily request refunds or get support for specific purchases directly from your purchase history. Having a centralized record simplifies the process of managing your financial interactions with Apple services.
            """
        ),
        DataRowModel(
            icon: "bag",
            title: "Apple Store Shopping Activity",
            description: "Monitor items you've viewed, wishlisted, or purchased from the Apple Store.",
            detail: """
            **Tracking Shopping Behavior:**
            Your shopping activity records the items you've browsed, added to wishlists, and purchased from the Apple Store. This data helps in managing your shopping preferences and planning future purchases.

            **Wishlist Management:**
            Easily organize and update your wishlists to keep track of products you're interested in. This feature allows you to prioritize items and receive notifications about availability or discounts.

            **Purchase Insights:**
            Analyze your purchasing patterns to make informed decisions about future purchases. Understanding what you buy most frequently can help in budgeting and identifying trends in your shopping behavior.
            """
        )
    ]

    // Security Data Section
    var securityData: [DataRowModel] = [
        DataRowModel(
            icon: "shield",
            title: "Device Security",
            description: "Assess the security status of your devices, including passcode strength and encryption.",
            detail: """
            **Security Overview:**
            Evaluate the overall security posture of your devices by reviewing settings such as passcode strength, encryption status, and security updates. Ensuring robust security measures protects your data from unauthorized access.

            **Passcode and Authentication:**
            Implement strong passcodes and utilize biometric authentication methods like Face ID or Touch ID. Regularly updating your authentication methods enhances the security of your devices against potential breaches.

            **Encryption and Data Protection:**
            Ensure that your device data is encrypted to safeguard sensitive information. Encryption prevents data theft and ensures that your personal and professional information remains confidential even if your device is lost or stolen.
            """
        ),
        DataRowModel(
            icon: "key",
            title: "Account Security",
            description: "Manage your account security settings, including two-factor authentication and trusted devices.",
            detail: """
            **Enhancing Account Security:**
            Activate two-factor authentication (2FA) to add an extra layer of security to your Apple ID. 2FA requires verification from a trusted device or phone number, making it significantly harder for unauthorized users to access your account.

            **Managing Trusted Devices:**
            Review and update the list of devices that are trusted to access your account. Removing outdated or unused devices helps in minimizing potential security risks and ensures that only your current devices have access.

            **Security Alerts and Notifications:**
            Receive real-time alerts for any suspicious activities or login attempts. These notifications keep you informed about the security status of your account and allow you to take immediate action if necessary.
            """
        ),
        DataRowModel(
            icon: "lock",
            title: "Privacy Settings",
            description: "Control your privacy preferences, such as location services, data sharing, and app permissions.",
            detail: """
            **Customizing Privacy Preferences:**
            Tailor your privacy settings to control how your data is shared and used. This includes managing permissions for location services, microphone access, camera usage, and more across different apps and services.

            **Data Sharing Controls:**
            Decide which apps and services can access your personal information. Limiting data sharing enhances your privacy and reduces the risk of your data being used without your consent.

            **Transparency and Consent:**
            Stay informed about how your data is being used by reviewing privacy policies and consent agreements. Ensuring transparency helps you make informed decisions about your privacy and data management.
            """
        )
    ]
            
    public var body: some View {
        List {
            Text("How we use your data?")
                .font(.title2)
                .fontWeight(.bold)
                .listRowBackground(Color.clear)
            
            Section(header: Text("Usage")) {
                Text("Your devices, searches, services, browsing, purchases, Apple Store shopping activity, and device trust score may be used to personalize your experience, send you notifications, provide and improve the store, and prevent fraud.")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .padding(.vertical, 5)
            }
            
            // Personal Data Section
            Section(header: Text("Personal Data")) {
                ForEach(personalData) { model in
                    HowWeUseDataRow(model: model)
                        .onTapGesture {
                            navigationManager.navigate(to: OnboardingNavigationPages.managingDetail(model: model))
                        }
                }
            }
            
            // Activity Section
            Section(header: Text("Activity")) {
                ForEach(activityData) { model in
                    HowWeUseDataRow(model: model)
                        .onTapGesture {
                            navigationManager.navigate(to: OnboardingNavigationPages.managingDetail(model: model))
                        }
                }
            }
            
            // Security Section
            Section(header: Text("Security")) {
                ForEach(securityData) { model in
                    HowWeUseDataRow(model: model)
                        .onTapGesture {
                            navigationManager.navigate(to: OnboardingNavigationPages.managingDetail(model: model))
                        }
                }
            }
            
            
        }
    }
}

fileprivate struct PreviewStruct: View {
    @StateObject var rootNavigationManager: PKSNavigationManager = .init(identifier: "Onboarding")

    
    var body: some View {
        PKSNavigationContainer(
            navigationManager: rootNavigationManager
        ) {
            HowManagingDatasView()
        }
       
    }
}

#Preview {
    PreviewStruct()
}

