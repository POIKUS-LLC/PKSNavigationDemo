//
//  ToggleSettingView.swift
//  Onboarding
//
//  Created by Ömer Hamid Kamışlı on 9/30/24.
//

import SwiftUI

struct ToggleSettingView: View {
    var title: String
    var description: String
    @Binding var isOn: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Toggle(isOn: $isOn) {
                VStack(alignment: .leading, spacing: 5) {
                    Text(title)
                        .font(.headline)
                    Text(description)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
        }
    }
}

#Preview {
    ToggleSettingView(title: "Title", description: "Description", isOn: .constant(false))
}
