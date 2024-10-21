//
//  SwiftUIView.swift
//  Products
//
//  Created by Ömer Hamid Kamışlı on 10/6/24.
//

import SwiftUI
import ProductEntities
import NukeUI
import PKSNavigation

struct DiscoveryCardsView: View {
    @EnvironmentObject var navigationManager: PKSNavigationManager
    var highlightedCards: [DiscoveryCard]
    var carouselCards: [DiscoveryCard]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 8) {
                ForEach(highlightedCards) { card in
                    Button {
                        navigationManager.navigate(to: ProductNavigationablePages.iPhone, presentation: .sheet)
                    } label :{
                        DiscoveryCardView(card: card)
                    }
                }
            }
            .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    Rectangle()
                        .fill(Color.clear)
                        .frame(width: 16)
                    ForEach(carouselCards) { card in
                        Button {
                            navigationManager.navigate(to: ProductNavigationablePages.iPhone)
                        } label: {
                            DiscoveryCardView(card: card)
                                .frame(width: 380)
                                .padding(.trailing, 16)
                        }
                    }
                    Rectangle()
                        .fill(Color.clear)
                        .frame(width: 16)
                }
            }
        }
    }
}

#Preview {
    DiscoveryCardsView(highlightedCards: DiscoveryCard.highlightedCards, carouselCards: DiscoveryCard.cards)
}

