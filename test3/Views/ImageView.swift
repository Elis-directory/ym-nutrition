//
//  ImageView.swift
//  test3
//
//  Created by Eliran Chomoshe on 7/21/24.
//

import Foundation
import SwiftUI

struct ImageView: View {
    @Binding var image: UIImage?
    @Binding var darkModeState: Bool
    
    
    var body: some View {
        ZStack {
            Image(uiImage: image!)
                .resizable()
                .scaledToFit()
                .frame(width: 340, height: 355)
            
            
            RoundedRectangle(cornerRadius: 15.0)
                .stroke(darkModeState ? .gray : .yellow, lineWidth: 6)
                .frame(width: 270, height: 360)
            
            
        }
        Spacer()
        Spacer()
                
    }
 
}
