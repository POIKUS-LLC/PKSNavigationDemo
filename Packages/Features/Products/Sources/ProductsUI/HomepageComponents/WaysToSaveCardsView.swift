//
//  WaysToSaveCardsView.swift
//  Products
//
//  Created by Ömer Hamid Kamışlı on 10/6/24.
//

import SwiftUI
import ProductEntities

struct WaysToSaveCardsView: View {
    var cards: [WaysToSaveCard]
    var insidePadding: CGFloat = 16
    var listEndPadding: CGFloat = 16
    var placardSpacing: CGFloat = 8
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0){
                if insidePadding > 0 {
                    Rectangle()
                        .fill(Color.clear)
                        .frame(width: insidePadding)
                        .disabled(true)
                }
                
                ForEach(cards) { card in
                    WaysToSaveCardView(card: card)
                        .frame(width: 250)
                        .padding(.trailing, 8)
                }
                
                if listEndPadding > 0 {
                    Rectangle()
                        .fill(Color.clear)
                        .frame(width: listEndPadding)
                        .disabled(true)
                }
                
            }
            .fixedSize()
        }
    }
}

#Preview {
    WaysToSaveCardsView(cards: WaysToSaveCard.cards)
}
