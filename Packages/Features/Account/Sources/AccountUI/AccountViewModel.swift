// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

class AccountViewModel: ObservableObject {
    @Published var userName: String = ""
    @Published var userEmail: String = ""
    @Published var userInitials: String = ""
    
    init() {
        fetchUserDetails()
    }
    
    private func fetchUserDetails() {
        // Fetch user details from accountManager
        // For now, we'll use mock data
        userName = "Omer Kamisli"
        userEmail = "ohkamisli@poikus.com"
        userInitials = "OK"
    }
}
