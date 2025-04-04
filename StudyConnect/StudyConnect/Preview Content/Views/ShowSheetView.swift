//
//  ShowSheetView.swift
//  StudyConnect
//
//  Created by Akhil Gubbala on 04/04/25.
//

import Foundation
import SwiftUI

struct CreateStudyGroupView: View {
    @State private var groupName: String = ""
    @State private var selectedSubject: String = "Select subject"
    @State private var topics: String = ""
    @State private var description: String = ""
    
    let subjects = ["Math", "Science", "History", "Literature", "Technology"]
    
    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Text("Create Study Group")
                    .font(.headline)
                    .foregroundColor(.white)
                Spacer()
                Button(action: {
                    // Close action here
                }) {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                }
            }
            .padding()
            .background(Color.blue)
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Group Name")
                    .font(.headline)
                TextField("Enter group name", text: $groupName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("Subject")
                    .font(.headline)
                Menu {
                    ForEach(subjects, id: \.self) { subject in
                        Button(subject) {
                            selectedSubject = subject
                        }
                    }
                } label: {
                    HStack {
                        Text(selectedSubject)
                            .foregroundColor(selectedSubject == "Select subject" ? .gray : .black)
                        Spacer()
                        Image(systemName: "chevron.down")
                            .foregroundColor(.gray)
                    }
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                }
                
                Text("Topics (Tags)")
                    .font(.headline)
                TextField("Add topics separated by commas", text: $topics)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("Description")
                    .font(.headline)
                TextField("Describe your group's focus and goals", text: $description)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding()
            
            Button(action: {
                // Handle create group action
            }) {
                Text("Create Group")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(8)
            }
            .padding(.horizontal)
            
            Spacer()
        }
        
        .background(Color.white)
       
       
        .padding()
    }
}

struct CreateStudyGroupView_Previews: PreviewProvider {
    static var previews: some View {
        CreateStudyGroupView()
    }
}
