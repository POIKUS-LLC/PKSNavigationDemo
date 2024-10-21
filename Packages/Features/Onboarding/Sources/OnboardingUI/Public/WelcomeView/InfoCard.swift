//
//  InfoCard.swift
//  Onboarding
//
//  Created by Ömer Hamid Kamışlı on 9/28/24.
//

import SwiftUI

struct InfoCard: View {
    var title: String
    var description: String
    var icon: String
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 36, height: 36, alignment: .center)
                .foregroundStyle(.blue)
            VStack(alignment: .leading) {
                Text(title)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(description)
                    .foregroundStyle(.gray)
            }
        }
        .frame(maxWidth: .infinity)
    }
}
