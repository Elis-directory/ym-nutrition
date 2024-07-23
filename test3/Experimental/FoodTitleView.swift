//
//  FoodTitleView.swift
//  test3
//
//  Created by Eliran Chomoshe on 7/6/24.
//

import SwiftUI

struct FoodTitleView: View {
    var food: Food

    var body: some View {
        VStack(alignment: .leading) {
            AsyncImage(url: URL(string: food.imageUrl)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
            } placeholder: {
                ProgressView()
            }

            VStack(alignment: .leading) {
                Text(food.name)
                    .font(.headline)
                Text(food.subtitle)
                    .font(.subheadline)
                    .foregroundColor(.white)
            }
        }
        .padding()
      
    }
}
