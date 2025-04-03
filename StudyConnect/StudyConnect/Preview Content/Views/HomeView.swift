//
//  HomeView.swift
//  StudyConnect
//
//  Created by Akhil Gubbala on 03/04/25.
//

import Foundation
import SwiftUI
struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "house.fill")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                Text("Home View")
                    .font(.title)
            }
            .navigationTitle("Home")
            .toolbarBackground(Color.blue, for: .navigationBar) // Blue background for the title
            .toolbarColorScheme(.dark, for: .navigationBar)
        }
    }
}
