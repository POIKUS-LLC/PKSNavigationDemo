//
//  SizeReader.swift
//  PKSCore
//
//  Created by Ömer Hamid Kamışlı on 10/4/24.
//

import SwiftUI


@available(iOS 13.0, *)
public struct SizeReader: ViewModifier {
    @Binding var size: CGSize

    public func body(content: Content) -> some View {
        content
            .background(GeometryReader { geometry in
                Color.clear
                    .onAppear {
                        size = geometry.size
                    }
            })
    }
}

@available(iOS 13.0, *)
public extension View {
    func readSize(using binding: Binding<CGSize>) -> some View {
        modifier(SizeReader(size: binding))
    }
}


// Example usage
// struct ExampleView: View {
//     @State private var size: CGSize = .zero

//     var body: some View {
//         Text("Hello, World!")
//             .readSize(using: $size)
//     }
// }

