//
//  SetupNotificationsView.swift
//  Onboarding
//
//  Created by Ömer Hamid Kamışlı on 9/28/24.
//

import SwiftUI
import PKSNavigation

struct SetupNotificationsView: View {
    @AppStorage("isOnboardingCompleted") var isOnboardingCompleted: Bool = false
    @EnvironmentObject var navigationManager: PKSNavigationManager
    
    var body: some View {
        VStack(spacing: 40) {
            Image(systemName: "app.badge")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 68, height: 68)
                .padding(.top, 50)
                .foregroundStyle(.red)
            
            Text("Let’s set up your notifications.")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            VStack(alignment: .leading, spacing: 35) {
                NotificationOptionView(
                    image: "cube.box",
                    title: "Order Status",
                    description: "Receive status alerts about your latest order activity."
                )
                
                NotificationOptionView(
                    image: "calendar",
                    title: "Session Reminders",
                    description: "Get reminders about your upcoming Today at Apple sessions."
                )
                
                NotificationOptionView(
                    image: "bell",
                    title: "Announcements and Offers",
                    description: "Get information on new products, special store events, personalized notifications, and more."
                )
            }
            
            Text("You can modify and turn off indivial notifications later in Account Settings.")
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .font(.caption)
            
            Spacer()
            
            VStack(spacing: 10) {
                Button {
                    Task {
                        do {
                            let center = UNUserNotificationCenter.current()
                            try await center.requestAuthorization(options: [.alert, .sound, .badge])
                            navigationManager.killTheFlow()
                            isOnboardingCompleted = true
                        } catch {
                            navigationManager.killTheFlow()
                            isOnboardingCompleted = true
                        }
                    }                    
                } label: {
                    VStack {
                        Text("Turn On Notifications")
                            .padding(.vertical, 16)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color.blue)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerSize: .init(width: 16, height: 16)))
                }
                
                Button(action: {
                    navigationManager.killTheFlow()
                }) {
                    Text("Not now")
                        .foregroundColor(.blue)
                }
            }
            .padding(.bottom, 40)
        }
        .padding(.horizontal)
        .toolbar(.hidden)
    }
}


#Preview {
    SetupNotificationsView()
}
