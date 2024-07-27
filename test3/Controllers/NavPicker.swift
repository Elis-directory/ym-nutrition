//
//  NavBarViewPicker.swift
//  test3
//
//  Created by Eliran Chomoshe on 7/19/24.
//
import SwiftUI
import Foundation

struct NavPicker: View {
    @Binding var isShowingImagePicker: Bool
    @Binding var image: UIImage?
    @Binding var currentView: CurrentPageView
    @Binding var darkModeState: Bool
   
    
    var body: some View {
        ZStack {
            displayBackground(darkMode: darkModeState)
            switch currentView {
          
            case .homePage:
                NavBar(isShowingImagePicker: $isShowingImagePicker, image: $image, currentView: $currentView, darkModeState: $darkModeState)
            case .photoPage:
                AnalzyeButtonView(currentView: $currentView, darkModeState: $darkModeState)
            case .settingsPage:
                NavBar(isShowingImagePicker: $isShowingImagePicker, image: $image, currentView: $currentView, darkModeState: $darkModeState)
            case .analysisPage:
                NavBar(isShowingImagePicker: $isShowingImagePicker, image: $image, currentView: $currentView, darkModeState: $darkModeState)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 100)
        
        
    }
}

struct NavBar: View {
   
   @Binding var isShowingImagePicker: Bool
    @Binding var image: UIImage?
    @Binding var currentView: CurrentPageView
    @Binding var darkModeState: Bool
    
    var body: some View {
        HStack {
            Button(action: {
                // Home action
                currentView = .homePage
            }) {
                Image(systemName: "house.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundStyle(darkModeState ? .white : .yellow)
                    .padding()
            }
            
            Button(action: {
                currentView = .photoPage
                isShowingImagePicker.toggle()
            
                
            }) {
                Image(systemName: "camera.circle")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundStyle(darkModeState ? .white : .yellow)
                    .padding()
            } .padding()
                
            
            
            Button(action: {
                currentView = .settingsPage
            }) {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundStyle(darkModeState ? .white : .yellow)
                    .padding()
            }
        }
        .padding(.bottom, 20)
    }
}


struct AnalzyeButtonView: View {
    @Binding var currentView: CurrentPageView
    @Binding var darkModeState: Bool
    
    var body: some View {
        
        Button(action: {
            withAnimation(.easeOut(duration: 1.25)) {
                currentView = .analysisPage
            }
            
        },
               label: {
            ZStack {
                RoundedRectangle(cornerRadius: 20.0)
                    .stroke(darkModeState ? .gray : .red, lineWidth: 5)
                    .fill(darkModeState ? .white : .yellow)
                .frame(width: 200, height: 50)
                Text("Analyze")
                    .font(.headline)
                    .foregroundStyle(darkModeState ? .gray : .red)
                    .fontWeight(.semibold)
                
            }

           
        })
           
            
        
   
    }
}


