//  Food.swift
//  Represents Food object and associated attributes

import Foundation

struct Food: Identifiable, Codable {
    let id: UUID
    let name: String
    let description: String
    let imageUrl: String
    let subtitle: String
    var foods: [Food]?
    var isExpanded: Bool?
    
    
}

