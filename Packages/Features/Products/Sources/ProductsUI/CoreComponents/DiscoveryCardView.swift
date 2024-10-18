//
//  DiscoveryCardView.swift
//  Products
//
//  Created by Ömer Hamid Kamışlı on 10/6/24.
//

import SwiftUI
import ProductEntities
import NukeUI

struct DiscoveryCardView: View {
    var card: DiscoveryCard
    var isHorizontal: Bool = false
    var body: some View {
        VStack(spacing: 0) {
            LazyImage(url: card.image) { state in
                if let image = state.image {
                    image
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                } else if state.error != nil {
                    Color.red // Indicates an error
                        .aspectRatio(1, contentMode: .fit)
                } else {
                    ShimmerView() // Acts as a placeholder
                        .aspectRatio(1, contentMode: .fit)
                }
            }
            .background(
                card.backgroundColor ?? .white
            )
            .overlay(alignment: .bottomLeading) {
                VStack(alignment: .leading) {
                    if let highlightedText = card.highlightedText {
                        Text(highlightedText.uppercased())
                            .font(.caption)
                    }
                    Text(card.title)
                        .font(.headline)
                    Text(card.description)
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
                .padding(24)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                .foregroundStyle(card.textColor)
            }
            HStack {
                Text(card.fromString)
                    .font(.caption)
                    .foregroundStyle(card.footerBuyButtonColor)
                Spacer()
                Button("Buy") {
                    
                }
                .padding(.horizontal)
                .padding(.vertical, 8)
                .background(card.footerBuyButtonColor)
                .foregroundStyle(card.footerBuyButtonTextColor)
                .clipShape(Capsule())
            }
            .padding()
            .background(card.backgroundFooterColor)
        }
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.init(.systemGray5), lineWidth: 1)
        )
        
    }
}

#Preview {
    DiscoveryCardView(card: .highlightedCards[0])

        .frame(maxWidth: .infinity)
        
        .padding()
    
}
