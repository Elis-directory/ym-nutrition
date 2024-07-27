//  YoMama.swift
//  Main content view for application

import SwiftUI
struct YoMama: View {
    @State private var image: UIImage?
    @State private var isShowingImagePicker = false
    @State private var currentView = CurrentPageView.homePage
    @State private var darkModeState = false
    
    
    
    var body: some View {
        ZStack {
           displayBackground(darkMode: darkModeState)
            
            VStack {
                TitlesView(currentTitleView: $currentView)
                Spacer()
                
                switch currentView {
                    case .homePage:
                        RecentlyViewedView(darkModeState: $darkModeState)
                    
                    case .settingsPage:
                        SettingsView(darkModeState: $darkModeState)
                
                    case .photoPage:
                    if (image != nil) {
                        ImageView(image: $image, darkModeState: $darkModeState)
                        
                    }
                    
                    case .analysisPage:
                        InformationView(darkModeState: $darkModeState)
                }
                
                NavPicker(isShowingImagePicker: $isShowingImagePicker, image: $image, currentView: $currentView, darkModeState: $darkModeState)

            }.sheet(isPresented: $isShowingImagePicker) {
                
                ImagePicker(image: $image)
            }
            
        }
        
    }
}

@ViewBuilder
func displayBackground(darkMode: Bool) -> some View {
   
    BackgroundView(topColor: darkMode ? Color.gray : Color.orange, bottomColor: darkMode ? Color(#colorLiteral(red: 0.6475394663, green: 0.6475394663, blue: 0.6475394663, alpha: 1)): Color.pink)
        .ignoresSafeArea(.all)
}

#Preview {
    YoMama()
}





