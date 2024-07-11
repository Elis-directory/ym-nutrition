//
//  RecentlyViewed.swift
//  test3
//
//  Created by Eliran Chomoshe on 7/5/24.
//

import SwiftUI

struct RecentlyViewedView: View {
    @State private var foods: [Food] = parseJsonData()
    
    var body: some View {
        
        NavigationView {
        ZStack {
            BackgroundView(topColor: Color.orange, bottomColor: Color.pink)
                .ignoresSafeArea(.all)
           
            List(foods) { food in
                    HStack {
//                        AsyncImage(url: URL(string: food.imageUrl)) { image in
//                            image
//                                .resizable()
//                                .aspectRatio(contentMode: .fill)
//                                .frame(width: 50, height: 50)
//                                .clipped()
//                        } placeholder: {
//                            //ProgressView()
//                        }
                        
                        VStack(alignment: .leading) {
                            Text(food.name)
                                .font(.headline)
                                
                            Text(food.subtitle)
                                .font(.subheadline)
                                .foregroundColor(.white)
                        }
//                        .onTapGesture {
//                               var selectedItemId = food.id // selects the tapped item
//                               print("Item tapped: \(food.name)")
//                           }
                    }
                    .listRowBackground(Color.clear) // Make row background transparent
                   
                }
                .listStyle(PlainListStyle()) // Use plain list style
                .background(Color.clear) // Set list background to transparent
                //.navigationTitle("Recently Viewed Foods")
            }
            .background(Color.clear) // Set navigation view background to transparent
        }
    }
}





#Preview {
    RecentlyViewedView()
}
