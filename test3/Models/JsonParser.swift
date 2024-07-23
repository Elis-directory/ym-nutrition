//  JsonParser.swift
//  Created by EC on 7/5/24.
//  Parses and augments JSON data into decoded format
//  Enabling data to be used with swift language

import Foundation

func parseJsonData() -> [Food] {
    let decoder = JSONDecoder()
    do {
        var foods = try decoder.decode([Food].self, from: dummyJsonData)
        foods = foods.map { food in
            var newFood = food
            newFood.isExpanded = false
            return newFood
        }
        return foods
    } catch {
        print("Error decoding JSON: \(error)")
        return []
    }
}


