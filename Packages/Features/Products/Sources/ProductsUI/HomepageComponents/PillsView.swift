//
//  PillsView.swift
//  Products
//
//  Created by Ömer Hamid Kamışlı on 10/5/24.
//

import SwiftUI
import ProductEntities
import PKSCore
import PKSNavigation

struct PillsView: View {
    @EnvironmentObject var navigationManager: PKSNavigationManager
    @State var pillSize: CGSize = .zero
    var pills: [Pill]
    var insidePadding: CGFloat = 16
    var listEndPadding: CGFloat = 16
    var pillSpacing: CGFloat = 8
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                if insidePadding > 0 {
                    Rectangle()
                        .fill(Color.clear)
                        .frame(width: insidePadding)
                        .disabled(true)
                }
                ForEach(pills) { pill in
                    Button {
                        navigationManager.navigate(to: ProductNavigationablePages.iPhone)
                    } label: {
                        PillView(pill: pill)
                            .readSize(using: $pillSize)
                            .padding(.trailing, pillSpacing)
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
        .frame(maxWidth: .infinity, maxHeight: pillSize.height, alignment: .leading)
    }
}



#Preview {
    VStack {
        PillsView(pills: Pill.mockData)
        
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.init(.systemGray6))
}
