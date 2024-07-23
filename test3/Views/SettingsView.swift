//
//  SettingView.swift
//  settings
//
//  Created by Eliran Chomoshe on 7/8/24.
//

import SwiftUI

struct AccountSettingsView: View {
    @State private var toggle1 = false
    @State private var toggle2 = false
    @State private var toggle3 = false
    @State private var toggle4 = false
    @Binding var darkModeState: Bool
    
    var body: some View {
            ZStack {
                displayBackground(darkMode: darkModeState)

                VStack(spacing: 15) {

                    Toggle("Dark Mode", isOn: $darkModeState)
                        .padding()
                        .background(Color.clear)
                        .cornerRadius(10)

                    Toggle("Food Tracking", isOn: $toggle2)
                        .padding()
                        .background(Color.clear)
                        .cornerRadius(10)

                    Toggle("Local Storage", isOn: $toggle3)
                        .padding()
                        .background(Color.clear)
                        .cornerRadius(10)

                    Toggle("Share Data", isOn: $toggle4)
                        .padding()
                        .background(Color.clear)
                        .cornerRadius(10)

                    Spacer()
                }
                .padding()
            }
        }
    
}

struct NotificationSettingsView: View {
    @State private var toggle1 = false
    @State private var toggle2 = false
    @State private var toggle3 = false
    @State private var toggle4 = false
    @Binding var darkModeState: Bool
    
    var body: some View {
            ZStack {
                displayBackground(darkMode: darkModeState)

                VStack(spacing: 80) {

                    Toggle("Food Expiration Alerts", isOn: $toggle1)
                        .padding()
                        .background(Color.clear)
                        .cornerRadius(10)


                    Spacer()
                }
                .padding()
            }
        }
}

struct PrivacySettingsView: View {
    @Binding var darkModeState: Bool
    var body: some View {
        ZStack {
            displayBackground(darkMode: darkModeState)
            ScrollView {
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Disclaimer")
                                .font(.title2)
                                .padding(.top)

                            Text("""
                            This app is intended for informational and educational purposes only and is not a substitute for professional advice. Users should always seek the advice of qualified professionals regarding any specific concerns or issues they may have.

                            """)
                            .padding(.horizontal)
                            
                            Text("Warning")
                                .font(.title2)
                                .padding(.top)
                            Text("""
                            This app should not be used by individuals who do not have a healthy relationship with food or who have obsessive issues. If you have an eating disorder or have any other condition that might cause obsessive behaviors, please seek professional help before using this app.
                            """)
                            .padding(.horizontal)
                            
                            Text("Privacy Statement")
                                .font(.title2)
                                .padding(.top)

                            Text("""
                            Your privacy is important to us. This app does not collect or store any personal data without your explicit consent. Any information provided by the user is stored securely and is only used to enhance the app's functionality. We do not share your information with third parties.
                            """)
                            .padding(.horizontal)

                            Spacer()
                        }
                        .padding()
                    }
            .padding()
        }
    }
}

struct GeneralSettingsView: View {
    @Binding var darkModeState: Bool
    var body: some View {
        ZStack {
            displayBackground(darkMode: darkModeState)
            
            Text("General Settings")
            .padding()
        }
    }
}


struct SettingsView: View {
    @Binding var darkModeState: Bool
  
    var body: some View {
        
        
        @State var storeData: Bool = true
       

            NavigationStack {
                ZStack {
                    displayBackground(darkMode: darkModeState)
                    List {
                        NavigationLink(destination: GeneralSettingsView(darkModeState: $darkModeState)) {
                            SettingsRowView(settingName: "General")
                        }
                        .listRowBackground(Color.clear) // Make row background transparent
                        NavigationLink(destination: AccountSettingsView(darkModeState: $darkModeState)) {
                            SettingsRowView(settingName: "Settings")
                        }
                        .listRowBackground(Color.clear)
                        NavigationLink(destination: NotificationSettingsView(darkModeState: $darkModeState)) {
                            SettingsRowView(settingName: "Notifications")
                        }
                        .listRowBackground(Color.clear)
                        
                        NavigationLink(destination: PrivacySettingsView(darkModeState: $darkModeState)) {
                            SettingsRowView(settingName: "Privacy")
                        }
                        .listRowBackground(Color.clear)
                      
                    }
                   
                }
                
                .listStyle(PlainListStyle()) // Use plain list style
                .background(.clear)
                
            }
            .tint(.white)
            .foregroundStyle(.white)
            .background(.clear)
            
        }
      
       
    }


struct SettingsRowView: View {
    var settingName: String
    
    var body: some View {
        HStack {
            Text(settingName)
                .font(.system(size: 18, weight: .regular, design: .default))
        
        }
        .padding()
    }
}



