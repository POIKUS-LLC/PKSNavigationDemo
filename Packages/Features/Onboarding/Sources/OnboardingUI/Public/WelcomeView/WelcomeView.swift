//
//  WelcomeView.swift
//  Onboarding
//
//  Created by Ömer Hamid Kamışlı on 9/28/24.
//

import SwiftUI
import PKSTheme
import PKSNavigation

public struct WelcomeView: View {
    @EnvironmentObject var navigationManager: PKSNavigationManager
    @StateObject var onboardingNavigationManager: PKSNavigationManager = PKSNavigationManager(identifier: "Onboarding Navigation Manager")
    
    public init() {}
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 40) {
            VStack {
                Text("Welcome to the Apple Store App")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("To create a personalized shopping experience, we'll collect and use data about your device, Apple Account, Apple Store shopping activity and Apple subscriptions.")
                
            }
            .multilineTextAlignment(.center)
     
            
            VStack(alignment: .leading, spacing: 24) {
                InfoCard(title: "See content tailored to you", description: "We'll use account and device info to show you relevant content and personalized recommendations.", icon: "person.circle")
                
                InfoCard(title: "Help improve the app", description: "We'll collect in-app activity, including searches and browsing history, to make enhancements to the app.", icon: "chart.xyaxis.line")
            }
            .padding(.top, 20)
            
            VStack(alignment: .center, spacing: 0) {
                Image(systemName: "person.and.person.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 36, height: 36, alignment: .center)
                    .foregroundStyle(.blue)
                
                Text("Your devices, searches, services, browsing, purchases, Apple Store shopping activity, and device trust score may be used to personalize your experience, send you notifications, provide and improve the store, and precent fraud")
                    .font(.caption)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                
                Button("See how your data is managed...") {
                    onboardingNavigationManager.navigate(to: OnboardingNavigationPages.howManagingDatas, presentation: .sheet)
                }
                .font(.caption)
            }
            .frame(maxWidth: .infinity, alignment: .center)
        
            Button {
                onboardingNavigationManager.navigate(to: OnboardingNavigationPages.privacySettings)
            } label: {
                VStack {
                    Text("Continue")
                        .padding(.vertical, 16)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .background(Color.blue)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerSize: .init(width: 16, height: 16)))
            }
        }
        .padding(.horizontal, PKSTheme.padding.base)
        .toolbar(.hidden)
        .onAppear {
            // TASK -
            onboardingNavigationManager.setParent(navigationManager)
        }
        .modalNavigationStackManager(
            navigationManager: onboardingNavigationManager
        )
    }
}


fileprivate struct PreviewStruct: View {
    @StateObject var rootNavigationManager: PKSNavigationManager = .init(identifier: "Onboarding")

    
    var body: some View {
        PKSNavigationContainer(
            navigationManager: rootNavigationManager
        ) {
            WelcomeView()
        }
       
    }
}

#Preview {
    PreviewStruct()
}

