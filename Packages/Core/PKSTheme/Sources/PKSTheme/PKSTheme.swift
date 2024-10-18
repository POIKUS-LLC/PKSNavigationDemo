// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

@MainActor
public struct PKSTheme {
    public init() {}
    
    static public let padding: PKSPadding = .init()
}


public struct PKSPadding {
    public let base: CGFloat = 24
}
