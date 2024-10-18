//
//  DataRow.swift
//  Onboarding
//
//  Created by Ömer Hamid Kamışlı on 9/28/24.
//

import SwiftUI

struct HowWeUseDataRow: View {
    let icon: String
    let title: String
    let description: String
    
    init(model: DataRowModel) {
        self.icon = model.icon
        self.title = model.title
        self.description = model.description
    }

    var body: some View {
        VStack {
            HStack {
                Image(systemName: icon)
                    .foregroundColor(.blue)
                    .frame(width: 24, height: 24)
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.headline)
                    Text(description)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 5)
           
        }
    }
}

#Preview {
    HowWeUseDataRow(model: DataRowModel(
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
    ))
}
