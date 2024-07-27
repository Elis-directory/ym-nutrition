//
//  informationView.swift
//  test3
//
//  Created by Eliran Chomoshe on 7/25/24.
//

import SwiftUI

struct InformationView: View {
    @Binding var darkModeState: Bool
    
    var body: some View {
        ZStack {
            displayBackground(darkMode: darkModeState)
        ScrollView {
           
               
                VStack(alignment: .leading, spacing: 10) {
                    

                    
                    Text("Ingredients:")
                        .foregroundStyle(.white)
                        .font(.title2)
                        .bold()
                    
                    Text("""
                    Sparkling Water
                    Apple Juice Concentrate
                    White Grape Juice Concentrate
                    Blackberry Juice Concentrate
                    Natural Flavors
                    Citric Acid
                    """)
                        .foregroundStyle(.white)
                        .font(.body)
                    
                    Text("Breakdown:")
                        .foregroundStyle(.white)
                        .font(.title2)
                        .bold()
                    
                    Text("""
                    Calories and Fat: The IZZE Sparkling Blackberry drink contains around 90 calories per serving and is fat-free. The calorie content is relatively moderate, primarily coming from natural fruit juices.

                    Sugars: The drink contains 20g of sugars per serving, derived from the fruit juice concentrates. While these sugars are naturally occurring, they still contribute to the overall sugar intake, which should be monitored for a balanced diet.

                    Sodium: With just 10mg of sodium per serving, the drink has a very low sodium content, making it suitable for those who are mindful of their sodium intake.

                    Carbohydrates: The total carbohydrate content is around 21g per serving, which comes mainly from the natural sugars present in the fruit juices.

                    Protein: The drink does not provide any significant amount of protein.

                    Caffeine: The IZZE Sparkling Blackberry drink is caffeine-free, making it a suitable option for those looking to avoid caffeine.

                    Ingredients: The ingredients are mainly natural, featuring a blend of fruit juice concentrates and natural flavors. However, the absence of added sugars does not negate the presence of naturally occurring sugars, which can still contribute to calorie intake.
                    """)
                    .font(.body)
                    .foregroundStyle(.white)
                    
                   
                    
                    Text("Conclusion:")
                        .foregroundStyle(.white)
                        .font(.title2)
                        .bold()
                    
                    Text("""
                    The IZZE Sparkling Blackberry drink is a refreshing option with natural ingredients and moderate calorie content. However, it is relatively high in natural sugars, which should be considered, especially if consumed regularly. It can be enjoyed as a treat or part of a balanced diet, but moderation is key to avoiding excessive sugar intake. Pairing it with water or other low-sugar beverages throughout the day can help maintain a balanced diet.
                    """)
                    .foregroundStyle(.white)
                    .font(.body)
                }
                .padding()
            }
            
        }
    }
}

#Preview {
    struct Preview: View {
           @State var darkMode = false
           var body: some View {
               InformationView(darkModeState: $darkMode)
           }
       }

       return Preview()
   
}
