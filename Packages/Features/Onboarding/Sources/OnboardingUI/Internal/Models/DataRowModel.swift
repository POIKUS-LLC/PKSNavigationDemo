//
//  DataRowModel.swift
//  Onboarding
//
//  Created by Ömer Hamid Kamışlı on 9/28/24.
//

import Foundation

struct DataRowModel: Equatable, Hashable, Identifiable {
    let id: UUID = UUID()
    
    let icon: String
    let title: String
    let description: String
    let detail: String 
}
