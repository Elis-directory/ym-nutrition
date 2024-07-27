//
//  titleView.swift
//  test3
//
//  Created by Eliran Chomoshe on 7/12/24.
//

import Foundation
import SwiftUI


struct TitlesView: View {
    @Binding var currentTitleView: CurrentPageView
    var homePageTitle = "Yo Mama Nutrition"
    var settingsTitle = "Settings"
    var photoTakenTitle = "Gallery"
    var analysisTitle = "Analysis"
    
    var body: some View {
        
        switch currentTitleView {
            case .homePage:
                Text(homePageTitle)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding()
            case .settingsPage:
                Text(settingsTitle)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding()
            
            case .photoPage:
                Text(photoTakenTitle)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding()
            
            case .analysisPage:
                Text(analysisTitle)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding()
        }
       
    }
}

