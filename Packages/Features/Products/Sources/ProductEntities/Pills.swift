//
//  Pills.swift
//  Products
//
//  Created by Ömer Hamid Kamışlı on 10/5/24.
//

import Foundation

public struct Pill: Identifiable, Hashable, Sendable {
    public var id: UUID
    public var name: String
    
    public init(id: UUID = .init(), name: String) {
        self.id = id
        self.name = name
    }
}
