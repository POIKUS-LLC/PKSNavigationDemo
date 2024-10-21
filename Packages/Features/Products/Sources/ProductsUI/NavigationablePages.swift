//
//  NavigationablePages.swift
//  Products
//
//  Created by Ömer Hamid Kamışlı on 10/19/24.
//

import PKSNavigation
import SwiftUI

enum ProductNavigationablePages: PKSPage {
    case iPhone
    
    var description: String {
        switch self {
        case .iPhone:
            return "iPhone"
        }
    }
    
    var body: some View {
        switch self {
        case .iPhone:
            ProductDetail()
        }
    }
}
