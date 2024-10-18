//
//  ProductHomePageView.swift
//  applestore
//
//  Created by Ömer Hamid Kamışlı on 10/4/24.
//

import SwiftUI
import ProductEntities

public struct ProductHomePageView: View {
    public init() {}
    
    public var body: some View {
        ScrollView {
            header
            StoreCardsView(products: Product.storeCards)
                .padding(.top)
            
            accessories
            discovery
            waysToSave
            Spacer(minLength: 60)
        }
        .background(Color.init(.systemGray6))
    }
    
    private var header: some View {
        HStack(alignment: .bottom) {
            Text("Products")
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
            accountView
        }
        .padding(.horizontal)
    }
    
    private var accountView: some View {
        Circle()
            .fill(Color.cyan)
            .frame(width: 50, height: 50, alignment: .center)
    }
    
    private var accessories: some View {
        VStack(alignment: .leading){
            Text("Accessories")
                .font(.headline)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top)
                .padding(.horizontal)
            PillsView(pills: Pill.mockData)
        }
    }
    
    private var discovery: some View {
        VStack(alignment: .leading){
            Text("Discover what's new")
                .font(.headline)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top)
                .padding(.horizontal)
            DiscoveryCardsView(highlightedCards: DiscoveryCard.highlightedCards, carouselCards: DiscoveryCard.cards)
        }
    }
    
    private var waysToSave: some View {
        VStack(alignment: .leading){
            Text("Ways to save")
                .font(.headline)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top)
                .padding(.horizontal)
            WaysToSaveCardsView(cards: WaysToSaveCard.cards)
        }
    }
}

#Preview {
    ProductHomePageView()
}
