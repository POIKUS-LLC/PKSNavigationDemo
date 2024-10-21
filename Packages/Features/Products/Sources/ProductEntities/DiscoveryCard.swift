//
//  DiscoveryCard.swift
//  Products
//
//  Created by Ömer Hamid Kamışlı on 10/6/24.
//

import SwiftUI

public struct DiscoveryCard: Identifiable, Sendable {
    public let id: String
    public let title: String
    public let description: String
    public let fromString: String
    public let backgroundFooterColor: Color
    public let image: URL
    public let footerBuyButtonColor: Color
    public let footerBuyButtonTextColor: Color
    public let highlightedText: String?
    public var backgroundColor: Color? = nil
    public var textColor: Color
}

