//
//  PillView.swift
//  Products
//
//  Created by Ömer Hamid Kamışlı on 10/6/24.
//

import SwiftUI
import ProductEntities

struct PillView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var pill: Pill
    
    var body: some View {
        Text(pill.name)
            .padding(.horizontal)
            .padding(.vertical, 8)
            .background(colorScheme == .dark ? Color.black : Color.white)
            .foregroundStyle(colorScheme == .dark ? Color.white : Color.black)
            .clipShape(Capsule())
            .overlay {
                Capsule()
                    .stroke(Color.init(.systemGray5), lineWidth: 1)
            }
    }
}


#Preview {
    PillView(pill: .init(name: "Random Product"))
}
