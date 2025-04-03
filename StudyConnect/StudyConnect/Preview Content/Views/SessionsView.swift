//
//  SessionsView.swift
//  StudyConnect
//
//  Created by Akhil Gubbala on 03/04/25.
//

import Foundation
import SwiftUI
struct SessionView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "clock.fill")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                Text("Sessions View")
                    .font(.title)
            }
            .navigationTitle("Sessions")
        }
    }
}
