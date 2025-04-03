//
//  ProfileView.swift
//  StudyConnect
//
//  Created by Akhil Gubbala on 03/04/25.
//

import Foundation
import SwiftUI
struct ProfileView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "person.crop.circle.fill")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                Text("Profile View")
                    .font(.title)
            }
            .navigationTitle("Profile")
        }
    }
}
