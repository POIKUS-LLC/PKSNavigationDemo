//
//  StoreCardView.swift
//  Products
//
//  Created by Ömer Hamid Kamışlı on 10/6/24.
//

import SwiftUI
import ProductEntities
import NukeUI


struct StoreCardView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var product: Product
    
    var body: some View {
        VStack(alignment: .center) {
            if let image = product.image {
                LazyImage(url: image) { state in
                    if let image = state.image {
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 80)
                    } else if state.error != nil {
                        Color.red // Indicates an error
                            .frame(width: 80, height: 80)
                    } else {
                        ShimmerView() // Acts as a placeholder
                            .frame(width: 80, height: 80)
                    }
                }
                .padding(.top, 8)
            }
            
            Spacer()
            if let name = product.name {
                Text(name)
                    .fontWeight(.bold)
                    .lineLimit(2)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
            }
            Spacer()
        }
        .frame(width: 130, height: 150)
        .background(colorScheme == .dark ? Color.black : Color.white)
        .foregroundStyle(colorScheme == .dark ? Color.white : Color.black)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .overlay {
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.init(.systemGray5), lineWidth: 1)
        }
        .fixedSize()
    }
}

#Preview {
    VStack {
        StoreCardView(product: .storeCard)
            .padding()
    }
    
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    .background(Color.init(.systemGray6))
}
