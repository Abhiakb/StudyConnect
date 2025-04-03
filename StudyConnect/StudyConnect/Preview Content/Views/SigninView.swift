//
//  SigninView.swift
//  StudyConnect
//
//  Created by Akhil Gubbala on 03/04/25.
//

import Foundation
import SwiftUI

struct SignInView: View {
    @State private var email = ""
    @State private var fullName = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var isPasswordVisible = false
    @State var navigationTrue:Bool = false
    @State var navigationToHome:Bool = false
    var body: some View {
        NavigationStack{
            VStack(spacing: 20) {
                
                VStack {
                    
                    Text("Create Account")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text("Join our community today")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.bottom, 30)
                
                
                VStack(spacing: 15) {
                    
                    TextField("Email", text: $email)
                        .textFieldStyle(AuthTextFieldStyle(iconName: "envelope"))
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                    
                    
                    TextField("Full Name", text: $fullName)
                        .textFieldStyle(AuthTextFieldStyle(iconName: "person"))
                    
                    
                    ZStack(alignment: .trailing) {
                        if isPasswordVisible {
                            TextField("Password", text: $password)
                        } else {
                            SecureField("Password", text: $password)
                        }
                    }
                    .textFieldStyle(AuthTextFieldStyle(iconName: "lock"))
                    .overlay(
                        Button(action: {
                            isPasswordVisible.toggle()
                        }) {
                            Image(systemName: isPasswordVisible ? "eye.slash" : "eye")
                                .foregroundColor(.gray)
                                .padding()
                        }
                        , alignment: .trailing
                    )
                    
                    
                    SecureField("Confirm Password", text: $confirmPassword)
                        .textFieldStyle(AuthTextFieldStyle(iconName: "lock"))
                    
                    
                    Button(action:  {
                        navigationToHome = true
                    }) {
                        Text("Sign Up")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    .navigationDestination(isPresented: $navigationToHome ){
                        MainTabView()
                    }
                    .padding(.top, 10)
                }
                
                
                HStack {
                    Text("Already have an account?")
                    Button("Log In") {
                        navigationTrue = true
                    }
                    .navigationDestination(isPresented: $navigationTrue ){
                        LoginView()
                    }
                    .foregroundColor(.blue)
                }
                .font(.footnote)
                .padding(.top, 20)
                
                Spacer()
            }
            .padding(.horizontal, 30)
        }
    }
}


struct AuthTextFieldStyle: TextFieldStyle {
    var iconName: String
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        HStack {
            Image(systemName: iconName)
                .foregroundColor(.gray)
            configuration
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
        )
    }
}
