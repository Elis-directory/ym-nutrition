//
//  informationView.swift
//  test3
//
//  Created by Eliran Chomoshe on 7/25/24.
//

import SwiftUI

struct informationView: View {
    @Binding var darkModeState: Bool
    
    var body: some View {
        ZStack {
            displayBackground(darkMode: darkModeState)
        ScrollView {
           
               
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Analysis:")
                        .font(.title2)
                        .bold()
                    
                    Text("""
                    Protein Content: The product is high in protein (26g), which is beneficial for muscle repair and growth, making it a good option for those who are physically active or looking to increase their protein intake.
                    
                    Low in Added Sugars: With 0g of added sugars, it is a healthier choice compared to many other flavored beverages or protein drinks.
                    
                    Fat Content: It contains 4.5g of total fat, including 3g of saturated fat. While not excessive, saturated fat should be monitored in a balanced diet.
                    
                    Micronutrients: It is a good source of calcium (50% DV) and potassium (20% DV), which are essential for bone health and cardiovascular function, respectively.
                    
                    Sodium Content: It has 260mg of sodium, which is 11% of the daily value. Those on a low-sodium diet should consider this.
                    
                    Fiber: With 2g of dietary fiber, it contributes to digestive health.
                    """)
                    .font(.body)
                    
                    Text("Ingredients:")
                        .font(.title2)
                        .bold()
                    
                    Text("""
                    Natural Sweeteners: The use of monk fruit juice concentrate and stevia leaf extract are positive, as they are natural, low-calorie sweeteners.
                    Carrageenan: This ingredient is often used as a thickener and stabilizer but can be controversial due to potential digestive issues in some people.
                    Acesulfame Potassium and Sucralose: These are artificial sweeteners. While generally recognized as safe, some individuals prefer to avoid artificial sweeteners.
                    """)
                    .font(.body)
                    
                    Text("Conclusion:")
                        .font(.title2)
                        .bold()
                    
                    Text("""
                    This product appears to be a balanced choice for those seeking high protein with low added sugars and a variety of essential nutrients. However, individuals sensitive to artificial ingredients or carrageenan might want to consider these factors. Always consider your specific dietary needs and preferences.
                    """)
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
               informationView(darkModeState: $darkMode)
           }
       }

       return Preview()
   
}
