//
//  ProductEntity.swift
//  Products
//
//  Created by Ömer Hamid Kamışlı on 10/4/24.
//

import SwiftUI

public struct Product: Identifiable, Hashable, Equatable {
    public var id: UUID
    
    public var image: URL?
    public var name: String?
    public var description: String?
    public var startingPrice: Double?
    public var isNew: Bool?
    public var backgroundColor: Color?
    
    public init(
        id: UUID = .init(),
        image: URL? = nil,
        name: String? = nil,
        description: String? = nil,
        startingPrice: Double? = nil,
        isNew: Bool? = nil,
        backgroundColor: Color? = nil
    ) {
        self.id = id
        self.image = image
        self.description = description
        self.startingPrice = startingPrice
        self.isNew = isNew
        self.backgroundColor = backgroundColor
    }
}
