//
//  ProfileView.swift
//  StudyConnect
//
//  Created by Akhil Gubbala on 03/04/25.
//

import SwiftUI
import Charts

struct ProfileView: View {
    struct StudyTime: Identifiable {
        let id = UUID()
        let group: String
        let hours: Double
    }

    let studyData = [
        StudyTime(group: "Calculus", hours: 3.0),
        StudyTime(group: "Python", hours: 2.5),
        StudyTime(group: "Biology", hours: 2.0),
        StudyTime(group: "Physics", hours: 1.0)
    ]

    var body: some View {
        NavigationStack {
            HStack {
                Text("Study Analytics")
                    .font(.title.bold())
                    .foregroundColor(.white)
                
                Spacer()
            }
            
            .background(Color.blue)
            ScrollView {
                VStack(spacing: 16) {
                    
                    // Header Section
                   

                    // Study Summary
                    VStack(alignment: .leading, spacing: 8) {
                        VStack{
                            Text("Study Summary")
                                .font(.headline)
                            Text("Total sessions this week: 5")
                            Text("Total study time: 8h 45m")
                        }
                        .padding(.leading)
                    }
                    .frame(maxWidth: 350)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.horizontal)

                    // Study Time by Group Chart
                    VStack(alignment: .leading) {
                        Text("Study Time by Group")
                            .font(.headline)
                        Chart {
                            ForEach(studyData) { data in
                                BarMark(
                                    x: .value("Group", data.group),
                                    y: .value("Hours", data.hours)
                                )
                                .foregroundStyle(Color.blue)
                            }
                        }
                        .frame(height: 150)
                    }
                    .padding()
                    
                    // Engagement Score
                    VStack(alignment: .leading) {
                        Text("Engagement Score")
                            .font(.headline)
                        VStack(alignment: .leading) {
                            Text("Your engagement: 80%")
                            ProgressView(value: 0.8)
                                .progressViewStyle(LinearProgressViewStyle(tint: .green))
                                .frame(height: 10)
                        }
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                    }
                    .padding(.horizontal)

                    // AI Recommendations
                    VStack(alignment: .leading, spacing: 8) {
                        Text("AI Recommendations")
                            .font(.headline)
                        VStack(alignment: .leading) {
                            Text("Study Group Match: Data Science Basics")
                                .font(.headline)
                            Text("95% match with your learning interests")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            HStack {
                                Spacer()
                                Button("View Group") {
                                    // Action for viewing the recommended group
                                }
                                .padding(.horizontal, 16)
                                .padding(.vertical, 8)
                                .background(Color.green)
                                .foregroundColor(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                            }
                        }
                        .padding()
                        .background(Color.green.opacity(0.2))
                        .cornerRadius(8)
                    }
                    .padding(.horizontal)

                    Spacer()
                }
            }
            .navigationTitle(".")
        }
    }
}

struct AnalyticsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

