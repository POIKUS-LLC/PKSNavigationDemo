//
//  StoreCardsView.swift
//  Products
//
//  Created by Ömer Hamid Kamışlı on 10/5/24.
//

import SwiftUI
import NukeUI
import ProductEntities
import PKSNavigation

struct StoreCardsView: View {
    @EnvironmentObject var navigationManager: PKSNavigationManager
    
    @State var products: [Product]
    var insidePadding: CGFloat = 16
    var listEndPadding: CGFloat = 16
    var placardSpacing: CGFloat = 8
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                if insidePadding > 0 {
                    Rectangle()
                        .fill(Color.clear)
                        .frame(width: insidePadding)
                        .disabled(true)
                }
                
                ForEach(products) { product in
                    Button {
                        navigationManager.navigate(to: ProductNavigationablePages.iPhone, presentation: .sheet)
                    } label: {
                        StoreCardView(product: product)
                            .padding(.trailing, placardSpacing)
                    }
                }
                
                if listEndPadding > 0 {
                    Rectangle()
                        .fill(Color.clear)
                        .frame(width: listEndPadding)
                        .disabled(true)
                }
            }
        }
        .frame(height: 150)
    }
}

#Preview {
    VStack {
        StoreCardsView(products: Product.storeCards)
        Spacer()
    }
    .background(Color.init(.systemGray6))
}

