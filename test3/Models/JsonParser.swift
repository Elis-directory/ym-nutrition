//
//  JsonParser.swift
//  test3
//
//  Created by Eliran Chomoshe on 7/5/24.
//

// JsonParser.swift
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


