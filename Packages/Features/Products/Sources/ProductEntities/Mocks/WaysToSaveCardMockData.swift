//
//  WaysToSaveCardMockData.swift
//  Products
//
//  Created by Ömer Hamid Kamışlı on 10/6/24.
//

import Foundation

public extension WaysToSaveCard {
    static let cards: [WaysToSaveCard] = [
        WaysToSaveCard(
            id: "1",
            image: URL(string: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/feature-card-carriers-202409?qlt=85&scl=1&fmt=png-alpha&.v=1723836872249")!,
            title: "Apple. Your one-stop shop for incredible carrier deals.",
            description: "Get up to $1000 in credit on a new iPhone. Trade-in may be required."
        ),
        WaysToSaveCard(
            id: "2",
            image: URL(string: "https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/service-card-medium-trade-in-202409?constrain=true&wid=3200&fmt=heif&qlt=40&.v=a3BaWkdGVnVjaTVKY0N1aVRsRm9sK0hScXhFL1FWM3pLelA2eVdNYitqS1A3ZUhrOXZtOXVxQVNzN2JEZDBEOGVhTEsvT25yZGdZa3Zwd08xWlJ6SWVxaE1hbVdtNHcrai9xbFBDSGtZaHl1aUt0MTA4cGdrb3R0QURvbkRNemM")!,
            title: "Trade In",
            description: "Trade in your current device. Get credit toward a new one."
        ),
        WaysToSaveCard(
            id: "3",
            image: URL(string: "https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/service-card-medium-apple-card-acmi-202407?constrain=true&wid=3200&fmt=heif&qlt=40&.v=a3BaWkdGVnVjaTVKY0N1aVRsRm9seitUdUlWcnlORjdocWF1bi9jZk9XVXNqTTVIdUs2S1dvN3ZzcmVUWDhvRU44VzIzb0FiZWZKRkpBbHRnRWpGTFVyTlFzdC9WMFppcjd3SmUxQmNpeXNHc21KOEpnMFN5b3h0NlMvcXR1Rm9wZUR5amxYV1NMK2lSbGtldmlPeDFB")!,
            title: "Apple Card Monthly Installments",
            description: "Pay 0% APR over 24 months when you choose to check out with Apple Card monthly Installments."
        ),
    ]
}
