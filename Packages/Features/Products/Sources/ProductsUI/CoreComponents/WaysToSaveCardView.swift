//
//  WaysToSaveCardView.swift
//  Products
//
//  Created by Ömer Hamid Kamışlı on 10/6/24.
//

import SwiftUI
import ProductEntities
import NukeUI

struct WaysToSaveCardView: View {
    @Environment(\.colorScheme) var colorScheme
    
    let card: WaysToSaveCard

    var body: some View {
        VStack {
            LazyImage(url: card.image) { state in
                if let image = state.image {
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                } else if state.error != nil {
                    Color.red // Indicates an error
                        .aspectRatio( contentMode: .fit)
                } else {
                    ShimmerView() // Acts as a placeholder
                        .aspectRatio(contentMode: .fit)
                }
            }
            .frame(height: 200)
            
            VStack(alignment: .leading) {
                Text(card.title)
                    .font(.headline)
                Text(card.description)
                    .font(.subheadline)
                    .foregroundStyle(.gray)
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .background(backgroundColor)
        }
        .background(colorScheme == .dark ? Color.black : Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.init(.systemGray5), lineWidth: 1)
        )
    }
    
    var backgroundColor: Color {
        if colorScheme == .dark {
            return Color(red: 20/255, green: 20/255, blue: 20/255)
        } else {
           return  Color(red: 243/255, green: 243/255, blue: 243/255)
        }
    }
}

#Preview {
    VStack {
        WaysToSaveCardView(card: WaysToSaveCard.cards[2])
            .frame(width: 250)
            .fixedSize()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
    .background(Color.init(.systemGray6))
}
