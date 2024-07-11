//
//  SignupView.swift
//  test3
//
//  Created by Eliran Chomoshe on 7/9/24.
//

import Foundation
import SwiftUI

struct Signup: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var showAlert: Bool = false
    @State private var alertMessage: String = ""
    
    
    func validateFields() -> Bool {
        if email.isEmpty || password.isEmpty || confirmPassword.isEmpty {
            alertMessage = "Please fill in all fields."
            showAlert = true
            return false
        }
        if password != confirmPassword {
            alertMessage = "Passwords do not match."
            showAlert = true
            return false
        }
        // Add more validation if needed
        return true
    }

    func signUp(email: String, password: String, confirmPassword: String) {
        // Implement your sign-up logic here
        alertMessage = "Signed up with email: \(email)"
        showAlert = true
    }
    
    var body: some View {
        Text("Lets Register An Account")
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(.black)
            .padding(.bottom, 40)
        TextField("email", text: $email)
            .padding()
            .background(Color.yellow)
            .cornerRadius(5.0)
            .padding(.bottom, 20)

        SecureField("password", text: $password)
            .padding()
            .background(Color.yellow)
            .cornerRadius(5.0)
            .padding(.bottom, 20)

        SecureField("confirm password", text: $confirmPassword)
            .padding()
            .background(Color.yellow)
            .cornerRadius(5.0)
            .padding(.bottom, 40)

        Button(action: {
            if validateFields() {
                signUp(email: email, password: password, confirmPassword: confirmPassword)
            }
        }) {
            Text("Sign Up!")
                .font(.headline)
                .foregroundColor(.black)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.yellow)
                .cornerRadius(15.0)
        }.alert(isPresented: $showAlert) {
            Alert(title: Text("Sign Up"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
        }
    }
}


