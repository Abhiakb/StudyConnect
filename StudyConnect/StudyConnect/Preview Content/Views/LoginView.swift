//
//  LoginView.swift
//  StudyConnect
//
//  Created by Akhil Gubbala on 03/04/25.
//

import Foundation
import SwiftUI
struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isPasswordVisible = false
    @State private var rememberMe = false
    
    var body: some View {
        VStack(spacing: 20) {
            // Header
            VStack {
                Text("Welcome Back")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Sign in to continue")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.bottom, 30)
            
            
            VStack(spacing: 15) {
              
                TextField("Email", text: $email)
                    .textFieldStyle(AuthTextFieldStyle(iconName: "envelope"))
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                
               
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
                
       
                HStack {
                    Toggle("Remember Me", isOn: $rememberMe)
                        .toggleStyle(CheckboxToggleStyle())
                        .font(.footnote)
                    
                    Spacer()
                    
                    Button("Forgot Password?") {
                        
                    }
                    .font(.footnote)
                    .foregroundColor(.blue)
                }
                .padding(.vertical, 5)
                
                                Button(action: {
                   
                }) {
                    Text("Log In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                
               
                HStack {
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray.opacity(0.3))
                    
                    Text("OR")
                        .font(.footnote)
                        .foregroundColor(.gray)
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray.opacity(0.3))
                }
                .padding(.vertical, 10)
                
                HStack(spacing: 20) {
                    Button(action: {}) {
                        Image("google-icon") 
                            .resizable()
                            .frame(width: 24, height: 24)
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .clipShape(Circle())
                    }
                    
                    Button(action: {}) {
                        Image("facebook-icon") 
                            .resizable()
                            .frame(width: 24, height: 24)
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .clipShape(Circle())
                    }
                    
                    Button(action: {}) {
                        Image("apple-icon") 
                            .resizable()
                            .frame(width: 24, height: 24)
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .clipShape(Circle())
                    }
                }
            }
            
            
            HStack {
                Text("Don't have an account?")
                Button("Sign Up") {
                    
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


struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(configuration.isOn ? .blue : .gray)
                .onTapGesture { configuration.isOn.toggle() }
            
            configuration.label
        }
    }
}
