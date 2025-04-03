//
//  GroupView.swift
//  StudyConnect
//
//  Created by Akhil Gubbala on 03/04/25.
//

import Foundation
import SwiftUI
struct GroupView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "person.3.fill")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                Text("Groups View")
                    .font(.title)
            }
            .navigationTitle("Groups")
        }
    }
}
