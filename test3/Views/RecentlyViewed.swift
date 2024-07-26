//
//  RecentlyViewed.swift
//  test3
//
//  Created by Eliran Chomoshe on 7/5/24.
//

import SwiftUI

struct RecentlyViewedView: View {
    @State private var foods: [Food] = parseJsonData()
    @State private var collapsed: Bool = false
    @Binding var darkModeState: Bool
    
    var body: some View {
        
        NavigationView {
        ZStack {
           
            displayBackground(darkMode: darkModeState)
           
            List($foods) { food in
                    HStack {
                        ModalView(isExpanded: collapsed, food: food)
 
                    }
                    .listRowBackground(Color.clear)
            }
            .listStyle(PlainListStyle())
            .background(Color.clear)
    
            }
            .background(Color.clear)
        }
    }
}



struct ModalView: View {
    @State var isExpanded: Bool
    @Binding var food: Food

    var body: some View {
        
        ZStack(alignment: .leading) {
           
            RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                .fill(.clear)
                .contentShape(Rectangle())
                .frame(maxWidth: .infinity, minHeight: 10)
                .onTapGesture {
                    isExpanded.toggle()
                }
            
                if !isExpanded {
                    collapsed()
                    
                } else {
                    expanded()
                }
         
            
          
            
        }
        
    }
    
    func collapsed() -> some View {
        VStack(alignment: .leading) {
            Text(food.name)
                .font(.title2)
                .foregroundStyle(.white)
                .bold()
            Text(food.subtitle)
                .font(.callout)
                .foregroundStyle(.white)
           
        }
    }
    
    func expanded() -> some View {
        VStack(alignment: .leading) {
            Text(food.name)
                .font(.title2)
                .foregroundStyle(.white)
                .bold()
            Text(food.subtitle)
                .font(.callout)
                .foregroundStyle(.white)
            Text(food.description)
                .font(.callout)
                .foregroundStyle(.white)
                .multilineTextAlignment(.leading)
        }
    }
    
    
}

//#Preview {
//    RecentlyViewedView()
//}



