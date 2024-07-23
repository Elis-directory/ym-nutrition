//
//  FoodDetailView.swift
//  test3
//
//  Created by Eliran Chomoshe on 7/5/24.
//

import SwiftUI

struct FoodDetailView: View {
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

            Text(food.name)
                .font(.largeTitle)
                .fontWeight(.bold)

            Text(food.description)
                .font(.body)
                .padding(.top, 10)
                

            Spacer()
        }
        .padding()
      
    }
}


