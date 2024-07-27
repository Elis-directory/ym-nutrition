//  DummyData.swift
//  Created by EC on 7/5/24.
//  JSON dummy data, represents a users history of foods that have been analyzed.

import Foundation

let dummyJsonData = """
[
    {
        "id": "\(UUID())",
        "name": "Izze",
        "subtitle": "Sparkling BlackBerry",
        "description": "The IZZE Sparkling Blackberry drink is a refreshing option with natural ingredients and moderate calorie content. However, it is relatively high in natural sugars, which should be considered, especially if consumed regularly. It can be enjoyed as a treat or part of a balanced diet, but moderation is key to avoiding excessive sugar intake. Pairing it with water or other low-sugar beverages throughout the day can help maintain a balanced diet.",
        "imageUrl": "https://example.com/pizza.jpg"
    },
    {
        "id": "\(UUID())",
        "name": "Burger",
        "subtitle": "Juicy Beef Burger",
        "description": "Overall, while hamburgers can be part of a balanced diet, moderation is key, especially given the potential for high calorie and fat content. Opting for lean meat, whole grain buns, and a variety of vegetables can make hamburgers a healthier choice. It's also advisable to limit high-calorie toppings and condiments.",
        "imageUrl": "https://example.com/burger.jpg"
    },
    {
        "id": "\(UUID())",
        "name": "Pasta",
        "subtitle": "Creamy Alfredo Pasta",
        "description": "While Alfredo pasta can be an indulgent and comforting meal, it should be consumed in moderation due to its high calorie, fat, and sodium content. Opting for whole grain pasta, incorporating lean proteins, and adding vegetables can help balance the meal and improve its nutritional profile.",
        "imageUrl": "https://example.com/pasta.jpg"
    }
]
""".data(using: .utf8)!
