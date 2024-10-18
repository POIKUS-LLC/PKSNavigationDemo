//
//  NotificationOptionView.swift
//  Onboarding
//
//  Created by Ömer Hamid Kamışlı on 9/30/24.
//

import SwiftUI

struct NotificationOptionView: View {
    var image: String
    var title: String
    var description: String
    
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            Image(systemName: image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 45)
                .foregroundColor(.blue)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                    .fontWeight(.semibold)
                
                Text(description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}

#Preview {
    NotificationOptionView(image: "bell", title: "Notifications", description: "Enable notifications for new updates and more.")
}
