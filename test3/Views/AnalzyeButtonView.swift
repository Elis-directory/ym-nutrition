//
//  ButtonViews.swift
//  test3
//
//  Created by Eliran Chomoshe on 7/19/24.
//

import SwiftUI

struct AnalzyeButtonView: View {
    
    var body: some View {
        
        Button(action: {
            
            // add action
        },
               label: {
            ZStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .stroke(Color.yellow, lineWidth: 20)
                    .fill(.red)
                .frame(width: 200, height: 50)
                Text("Analyze")
                    .font(.largeTitle)
                    .foregroundStyle(.yellow)
                    .fontWeight(.semibold)
                
            }

           
        })
           
            
        
   
    }
}

#Preview {
    AnalzyeButtonView()
}
