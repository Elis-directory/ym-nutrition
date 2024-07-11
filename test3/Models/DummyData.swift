//
//  DummyData.swift
//  test3
//
//  Created by Eliran Chomoshe on 7/5/24.
//

// DummyData.swift
import Foundation

let dummyJsonData = """
[
    {
        "id": "\(UUID())",
        "name": "Pizza",
        "subtitle": "Delicious cheese pizza",
        "description": "This is a detailed description of Pizza.",
        "imageUrl": "https://example.com/pizza.jpg"
    },
    {
        "id": "\(UUID())",
        "name": "Burger",
        "subtitle": "Juicy beef burger",
        "description": "This is a detailed description of Burger.",
        "imageUrl": "https://example.com/burger.jpg"
    },
    {
        "id": "\(UUID())",
        "name": "Pasta",
        "subtitle": "Creamy Alfredo pasta",
        "description": "This is a detailed description of Pasta.",
        "imageUrl": "https://example.com/pasta.jpg"
    }
]
""".data(using: .utf8)!
