//
//  Errors.swift
//  test3
//
//  Created by Eliran Chomoshe on 7/12/24.
//

import Foundation
import SwiftUI

struct DisplayErrorView: View {
    var body: some View {
        ZStack {
            BackgroundView(topColor: Color.orange, bottomColor: Color.pink)
                .ignoresSafeArea(.all)
            Text("You are encountering an error within the applications views")
                .navigationTitle("Error")
            .padding()
        }
    }
}
