//
//  GroupView.swift
//  StudyConnect
//
//  Created by Akhil Gubbala on 03/04/25.
//

import SwiftUI

struct GroupView: View {
    @State private var selectedFilter: String = "All"
    let filters = ["All", "My Groups", "Recommended"]

    struct StudyGroup: Identifiable {
        let id = UUID()
        let name: String
        let members: Int
        let time: String
        let topics: String
    }

    let groups = [
        StudyGroup(name: "Calculus II Study Group", members: 12, time: "Today, 3:00 PM", topics: "Integrals, Series, Differential Equations"),
        StudyGroup(name: "Python Programming", members: 8, time: "Tomorrow, 5:30 PM", topics: "Data Structures, Algorithms"),
        StudyGroup(name: "Biology 101", members: 15, time: "Friday, 2:00 PM", topics: "Cell Biology, Genetics, Ecology")
    ]

    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                // Header Section
                HStack {
                    Text("Study Groups")
                        .font(.title2.bold())
                        .foregroundColor(.white)
                    Spacer()
                    Button("+ Create") {
                        // Action for creating a group
                    }
                    .padding(.horizontal, 12)
                    .padding(.vertical, 8)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                .padding()
                .background(Color.blue)
                
                // Search Bar
                TextField("Search study groups...", text: .constant(""))
                    .padding(10)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.horizontal)

                // Filter Tabs
                HStack {
                    ForEach(filters, id: \.self) { filter in
                        Button(action: { selectedFilter = filter }) {
                            Text(filter)
                                .padding(.horizontal)
                                .padding(.vertical, 6)
                                .background(selectedFilter == filter ? Color.blue : Color(.systemGray5))
                                .foregroundColor(selectedFilter == filter ? .white : .black)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                    }
                }
                .padding(.horizontal)

                // Study Group List
                ScrollView {
                    VStack(spacing: 12) {
                        ForEach(groups) { group in
                            GroupBox {
                                VStack(alignment: .leading) {
                                    Text(group.name)
                                        .font(.headline)
                                    Text("\(group.members) Members • \(group.time)")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                    Text("Topics: \(group.topics)")
                                        .font(.footnote)
                                        .foregroundColor(.gray)
                                    HStack {
                                        Spacer()
                                        Button("Join") {
                                            // Action to join the group
                                        }
                                        .padding(.horizontal, 20)
                                        .padding(.vertical, 8)
                                        .background(Color.blue)
                                        .foregroundColor(.white)
                                        .clipShape(RoundedRectangle(cornerRadius: 8))
                                    }
                                }
                                .padding()
                            }
                        }
                    }
                }
                .padding(.horizontal)

                Spacer()

                // Bottom Navigation Bar
                HStack {
                    Spacer()
                    Text("Home")
                    Spacer()
                    Text("Groups").bold()
                    Spacer()
                    Text("Sessions")
                    Spacer()
                    Text("Profile")
                    Spacer()
                }
                .padding()
                .background(Color(.systemGray6))
            }
            .navigationTitle("Groups")
        }
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}

