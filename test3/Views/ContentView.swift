//
//  ContentView.swift
//  test3
//
//  Created by Eliran Chomoshe on 6/22/24.
//


import SwiftUI
struct ContentView: View {

    @State private var image: UIImage?
    @State private var isShowingImagePicker = false
    
    var body: some View {
        ZStack {
            BackgroundView(topColor: Color.orange, bottomColor: Color.pink)
                .ignoresSafeArea(.all)
            
            VStack {
                TitleView()
                Spacer()
                
                if let image = image {
                               Image(uiImage: image)
                                   .resizable()
                                   .scaledToFit()
                                   .frame(width: 340, height: 360)
                                  // .clipShape(.circle)
                    Button(action: {
                        // TODO:
                        // nutritonRequest()
                    }, label: {
                           
                            Image(systemName: "arrowshape.up.circle.fill")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .foregroundStyle(.yellow)
                                .padding()
                        
                    })
                    Spacer()
                    Spacer()
                } else {
                   // RecentlyViewedView()
                    SettingsView()
                    Spacer()
                    Spacer()
                    
                }
               
                
                NavBar(isShowingImagePicker: $isShowingImagePicker, image: $image)
            }
        }
    }
}

#Preview {
    ContentView()
}

struct TitleView: View {
    var body: some View {
        Text("Yo Mama Nutrition")
            //.font(.custom("Title", size: CGFloat(42)))
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding()
    }
}

//struct NavBar: View {
////    func takePhoto() {
////        let photoSettings: AVCapturePhotoSettings
////        if self.photoOutput.availablePhotoCodecTypes.contains(.hevc) {
////            photoSettings = AVCapturePhotoSettings(format:
////                [AVVideoCodecKey: AVVideoCodecType.hevc])
////        } else {
////            photoSettings = AVCapturePhotoSettings()
////        }
////        photoSettings.flashMode = .auto
////        photoSettings.isAutoStillImageStabilizationEnabled =
////            self.photoOutput.isStillImageStabilizationSupported
////    }
//    var body: some View {
//        HStack {
//           
//            Button(action: {
//                // Home action
//            }) {
//                Image(systemName: "house.fill")
//                    .resizable()
//                    .frame(width: 40, height: 40)
//                    .foregroundColor(.yellow)
//                    .padding()
//            }
//            
//            Button(action: {
//                // Add action
//            }) {
//                Image(systemName: "plus.circle.fill")
//                    .resizable()
//                    .frame(width: 60, height: 60)
//                    .foregroundColor(.yellow)
//                    .padding()
//            }
//            
//            Button(action: {
//                // Profile action
//            }) {
//                Image(systemName: "person.fill")
//                    .resizable()
//                    .frame(width: 40, height: 40)
//                    .foregroundColor(.yellow)
//                    .padding()
//            }
//        }
//        .padding(.bottom, 20)
//    }
//}


struct NavBar: View {
   
    @Binding var isShowingImagePicker: Bool
    @Binding var image: UIImage?
    
    var body: some View {
        HStack {
            Button(action: {
                // Home action
            }) {
                Image(systemName: "house.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundStyle(.yellow)
                    .padding()
            }
            
            Button(action: {
                isShowingImagePicker = true
            }) {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundStyle(.yellow)
                    .padding()
            } .padding()
                .sheet(isPresented: $isShowingImagePicker) {
                    ImagePicker(image: $image)
                }
            
            
            Button(action: {
                // Profile action
            }) {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundStyle(.yellow)
                    .padding()
            }
        }
        .padding(.bottom, 20)
    }
}
