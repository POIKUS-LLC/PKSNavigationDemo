//
//  PrivacySettingsView.swift
//  Onboarding
//
//  Created by Ömer Hamid Kamışlı on 9/28/24.
//

import SwiftUI
import PKSNavigation

struct PrivacySettingsView: View {
    @EnvironmentObject var navigationManager: PKSNavigationManager
    
    @State private var shareDevices = false
    @State private var shareServices = false
    @State private var shareAnalytics = false
    
    var body: some View {
        List {
            Section {
                VStack {
                    // Lock Icon
                    Image(systemName: "lock.shield.fill")
                        .font(.system(size: 72))
                        .foregroundColor(.blue)
                    
                    // Title
                    Text("Choose what you share with us.")
                        .multilineTextAlignment(.center)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top, 20)
                        .lineLimit(2, reservesSpace: true)
                    
                    
                    // Subtitle
                    Text("You can modify these at any time in Account Settings. Scroll down to see all options.")
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .padding(.top, 10)
                }
            }
            .listRowBackground(Color.clear)
            
            Section("Personalization") {
                ToggleSettingView(title: "Your Devices", description: "We’ll use devices linked to your Apple ID, information about your interactions with Apple, and purchases from the Apple Store to show you personalized content, product recommendations, and your AppleCare status.", isOn: $shareDevices)
                
                ToggleSettingView(title: "Your Services", description: "We’ll use information about the Apple services linked to your Apple ID to show any recommendations.", isOn: $shareServices)
                
                Text("These settings ensure that you can access more app features, see relevant content, and shop compatible product recommendations.")
                    .font(.footnote)
                    .foregroundStyle(.gray)
                    .listRowBackground(Color.clear)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            Section {
                ToggleSettingView(title: "Analytics", description: "We may collect in-app activity including your searches, browsing history, purchases, and other interactions to make enhancements and improve the app experience.", isOn: $shareAnalytics)
            }
            
            button
                .disabled(true)
                .opacity(0)
                .listRowBackground(Color.clear)
        }
        .listRowSpacing(0)
        .overlay(alignment: .bottom) {
            button
        }
        .toolbar(.hidden)
    }
    
    var button: some View {
        Button {
            navigationManager.navigate(to: OnboardingNavigationPages.setupNotifications)
        } label: {
            VStack {
                Text("Save")
                    .padding(.vertical, 16)
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Color.blue)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerSize: .init(width: 16, height: 16)))
        }
        .padding(.bottom, 60)
        .padding(.horizontal)
        .padding(.top, 25)
        .background(Color(.systemGray6))
    }
}

#Preview { PrivacySettingsView() }
