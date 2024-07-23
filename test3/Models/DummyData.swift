//  DummyData.swift
//  Created by EC on 7/5/24.
//  JSON dummy data, represents a users history of foods that have been analyzed.

import Foundation

let dummyJsonData = """
[
    {
        "id": "\(UUID())",
        "name": "Starbucks Refresher",
        "subtitle": "Typically 24 fl oz",
        "description": "Serving Size: Not specified Calories: 210 Total Fat: 0g Sodium: 20mg Total Carbohydrates: 51g Dietary Fiber: 1g Sugars: 48g Protein: 0g Caffeine: 70mg",
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
