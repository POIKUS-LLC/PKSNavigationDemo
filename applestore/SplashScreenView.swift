//
//  SplashScreenView.swift
//  PKSNavigationDemo
//
//  Created by Ömer Hamid Kamışlı on 9/26/24.
//

import SwiftUI
import PKSNavigation
import Combine

struct SplashScreenView: View {
    @AppStorage("isOnboardingCompleted") private var isOnboardingCompleted: Bool = false
    @StateObject private var navigationManager: PKSNavigationManager = PKSNavigationManager(identifier: "SplashNavigation")
    
    @State private var completionAmount = 0.0
    @State private var timer = Timer.publish(every: 0.2, on: .main, in: .default).autoconnect()
    
    @Binding private var isLoaded: Bool
    
    init(isLoaded: Binding<Bool>) {
        self._isLoaded = isLoaded
    }
    
    var body: some View {
        PKSNavigationContainer(navigationManager: navigationManager) {
            ZStack {
                Color.white.edgesIgnoringSafeArea(.all)
                ZStack {
                    Image("apple.logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                        .foregroundColor(.white)
                        .opacity(0.8)
                    
                    Circle()
                        .trim(from: 0, to: completionAmount)
                        .stroke(Color.black, lineWidth: 4)
                        .frame(width: 160, height: 160)
                        .rotationEffect(.degrees(-90))
                }
                .onReceive(timer) { _ in
                    withAnimation {
                        if completionAmount > 1 {
                            if !isOnboardingCompleted {
                                navigationManager.navigate(to: SplashPages.onboarding, presentation: .sheet)
                            } else {
                                isLoaded = true
                            }
                            timer.upstream.connect().cancel()
                        } else {
                            completionAmount += 0.03
                        }
                    }
                }
            }
            .animation(.default, value: isLoaded)
            .ignoresSafeArea()
            .statusBarHidden(!isLoaded)
            .onChange(of: isOnboardingCompleted) { newValue in
                if newValue == true {
                    isLoaded = true
                }
            }
        }
    }
}

#Preview {
    SplashScreenView(isLoaded: .constant(false))
}



