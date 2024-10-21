//
//  InfoCard.swift
//  Products
//
//  Created by Ömer Hamid Kamışlı on 10/20/24.
//


import SwiftUI

struct InfoCard: View {
    var headline: String
    var subheadline: String
    var action: @MainActor () -> Void
    
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            VStack(alignment: .leading) {
                Text(headline)
                    .font(.headline)
                Text(subheadline)
                    .font(.subheadline)
            }
            Spacer()
            Button {
                action()
            } label: {
                Image(systemName: "info.circle")
            }
        }
        .padding()
        .padding(.vertical, 12)
        .background(Color(red: 232/255, green: 232/255, blue: 237/255))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}
