//
//  ProductMockData.swift
//  Products
//
//  Created by Ömer Hamid Kamışlı on 10/4/24.
//

import Foundation

public extension Product {

}


public extension Product {
    static let storeCard: Product = .storeCards.first!
    
    static let storeCards: [Product] = [
        .init(
            image: URL(string: "https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/product-card-iphone-nav-202409_GEO_US?wid=600&fmt=heif&qlt=40&.v=dEVCNkpsZmhONW9mc254eGZNMVFydDl0dUNldHBmMHk3Nk5sMjRGT2hCa1hQREVJcmsrV0VuUGsyc1U2QkNXZ3VyRVhKNWkxTVE3eHU4eDE0b0tTVlB2eVh0dWxXMTMvTkhrVTVKWVltejA")!,
            name: "iPhone",
            description: nil,
            startingPrice: nil,
            isNew: nil
        ),
        .init(
            image: URL(string: "https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/product-card-watch-nav-202409?wid=600&fmt=heif&qlt=40&.v=QW1kekowTmtXSkhMRXkwR0U4V29GU0JFa2VOM2cyM3luQ3lGSHV0VG9EakJjUnlTWjVWcjJqM0YyK0YxR1JmRmlVWDNtMTdTT0RWaVRUVjdoOFJpU01FcFhUL0FOR0U1UEx2N2FqS0phbHc")!,
            name: "Apple Watch",
            description: nil,
            startingPrice: nil,
            isNew: nil
        ),
        .init(
            image: URL(string: "https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/product-card-ipad-nav-202407?wid=600&fmt=heif&qlt=40&.v=U3FnK0VoUmoySEorWGc5VlJucHVPN0JRcUw2aVRhZVQvR242TkJjMmJGd2dYVnF1Umx1RWNUOVpkdU5BNGQ2QUQ2NXZpVWgxY25OQS9QOE9LVG5VSWsxcFRkdUpESUlvWmtBcjVFRTc3ZmM")!,
            name: "iPad",
            description: nil,
            startingPrice: nil,
            isNew: nil
        ),
        .init(
            image: URL(string: "https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/product-card-mac-nav-202407?wid=600&fmt=heif&qlt=40&.v=Vm5mMFpma0NZdzNRbWV3QTEranZtTWtaVitjNk0zeFJMVVJnakJyZUxNRjRKd21WK2Y4WlJqNDRSU1dEMVBqVW9SWHhseHJxTFFOb2dmUTJwRzdJYnpQVUQyLy9NVkJ1YkxHZGlJaG5qdkE")!,
            name: "Mac",
            description: nil,
            startingPrice: nil,
            isNew: nil
        ),
        .init(
            image: URL(string: "https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/product-card-vision-pro-nav-202407?wid=600&fmt=heif&qlt=40&.v=QnAvaHNxY2YxNXArN2hnbE1pQmRCUEVzUlJTd0ZiQjlNRk5tSVUxVDBoQ1FmamJwRkUzU3NwMm1HY3BJYWVBckxrek4xdFhzVk5UVmE3dTZwU0dFb3VWczIvVEtPZ3VmUTRnbE5ZRDRVZUU")!,
            name: "Apple Vision Pro",
            description: nil,
            startingPrice: nil,
            isNew: nil
        ),
        .init(
            image: URL(string: "https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/product-card-airpods-nav-202409?wid=600&fmt=heif&qlt=40&.v=QjNtYnNEY1ZEN2IyRjBWTGtveFZ3SFBNSUpwQ3BreUJyQnpUbzVENTluOFFzVmpLM1ZWUlpGWFI1b284OVlPSE4yRGw3NUVFenQ3dm1OY3YweG5QZ1hnYnRDaktGeFlnY0g2ZW4xT0dJclU")!,
            name: "AirPods",
            description: nil,
            startingPrice: nil,
            isNew: nil
        ),
          .init(
            image: URL(string: "https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/product-card-appletv-nav-202407?wid=600&fmt=heif&qlt=40&.v=UnY5eWQzT1hBMWtLZFAwSXdKaUdGRUFjNkNsUEVwbWsrVzBHcVV4eW4vUVFzVmpLM1ZWUlpGWFI1b284OVlPSGJIRldQalhMQW1OK0NIMW02Q3ZOLzZ3TXdvRGJVRXF6bU10T2RTTXUvWHM")!,
            name: "Apple TV 4K",
            description: nil,
            startingPrice: nil,
            isNew: nil
        ),
        .init(
            image: URL(string: "https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/product-card-homepod-nav-202407?wid=600&fmt=heif&qlt=40&.v=QXpDaC84RmsvcFJGTi9panpESHFMYnAyU2JoLytRT0I1TFB4amlEdkRhUVFzVmpLM1ZWUlpGWFI1b284OVlPSGJIRldQalhMQW1OK0NIMW02Q3ZOLzRCZ3JiVzJoL3ZsdVlkVmlWR0ZxSkE")!,
            name: "HomePod",
            description: nil,
            startingPrice: nil,
            isNew: nil
        ),
        .init(
            image: URL(string: "https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/product-card-airtags-nav-202407?wid=600&fmt=heif&qlt=40&.v=QjNtYnNEY1ZEN2IyRjBWTGtveFZ3RVJudlBkNGxsdkNTT2dIWG1zUWdqMFFzVmpLM1ZWUlpGWFI1b284OVlPSGJIRldQalhMQW1OK0NIMW02Q3ZOLyt5L2d4blkxa2UxNk5hSFVYaWpabHc")!,
            name: "AirTag",
            description: nil,
            startingPrice: nil,
            isNew: nil
        )
    ]
}

