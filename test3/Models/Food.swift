//
//  Food.swift
//  test3
//
//  Created by Eliran Chomoshe on 7/5/24.
//

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

