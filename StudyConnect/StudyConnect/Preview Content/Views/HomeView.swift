//
//  HomeView.swift
//  StudyConnect
//
//  Created by Akhil Gubbala on 03/04/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                // Header
                HStack {
                    Text("StudyConnect")
                        .font(.title2.bold())
                        .foregroundColor(.white)
                    Spacer()
                    Circle()
                        .fill(Color.white)
                        .frame(width: 32, height: 32)
                        .overlay(Text("User").font(.caption).foregroundColor(.blue))
                }
                .padding()
                .background(Color.blue)
                
                // Welcome Section
                VStack(alignment: .leading) {
                    Text("Welcome back, Alex!")
                        .font(.headline)
                    Text("2 upcoming sessions today")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Button("+ New Group") {
                        // Action for new group
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)
                
                // Next Session
                VStack(alignment: .leading) {
                    Text("Next Session")
                        .font(.headline)
                    VStack(alignment: .leading) {
                        Text("Calculus II")
                            .font(.headline)
                        Text("Today, 3:00PM - 4:30PM")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Text("12 participants")
                            .font(.footnote)
                            .foregroundColor(.gray)
                        Button("Join Now") {
                            // Action to join session
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                }
                .padding(.horizontal)
                Text("My Groups")
                    .font(.headline)
                    .padding(.leading,-400)
                // My Groups
                VStack(alignment: .leading) {
                   
                    GroupBox {
                        VStack(alignment: .leading) {
                            Text("Calculus II (12)")
                                .font(.headline)
                            Text("Next: Today, 3:00PM")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                    }
                    
                    
                    GroupBox {
                        VStack(alignment: .leading) {
                            Text("Python Programming (8)")
                                .font(.headline)
                            Text("Next: Tomorrow, 5:30PM")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                    }
                }
                .padding(.horizontal)

                Spacer()
                
                // Bottom Navigation
                HStack {
                    Spacer()
                    Text("Home").bold()
                    Spacer()
                    Text("Groups")
                    Spacer()
                    Text("Sessions")
                    Spacer()
                    Text("Profile")
                    Spacer()
                }
                .padding()
                .background(Color(.systemGray6))
            }
            .navigationTitle("Home")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

