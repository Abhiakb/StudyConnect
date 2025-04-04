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
        VStack{
            SessionsView()
        }
    }
}
import SwiftUI

struct SessionsView: View {
    @State private var selectedTab = "Upcoming"
    @State private var showCreateSession = false
    let tabs = ["Upcoming", "Past"]
    
    var body: some View {
        VStack {
            HStack {
                Text("Study Groups")
                    .font(.title2.bold())
                    .foregroundColor(.white)
                Spacer()
            }
            .padding()
            .background(Color.blue)
            Picker("Session Type", selection: $selectedTab) {
                ForEach(tabs, id: \.self) { tab in
                    Text(tab).tag(tab)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            List {
                SessionRow(sessionTitle: "Math Study Group", date: "April 10, 2025", time: "5:00 PM", isLive: false)
                SessionRow(sessionTitle: "Physics Q&A", date: "April 12, 2025", time: "7:00 PM", isLive: true)
            }
            
            Spacer()
            
            Button(action: {
                showCreateSession = true
            }) {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.blue)
            }
            .padding()
        }
        .sheet(isPresented: $showCreateSession) {
            CreateSessionView()
        }
    }
}

struct SessionRow: View {
    var sessionTitle: String
    var date: String
    var time: String
    var isLive: Bool
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(sessionTitle).font(.headline)
                Text("\(date) • \(time)").font(.subheadline).foregroundColor(.gray)
            }
            Spacer()
            if isLive {
                Text("LIVE").foregroundColor(.red).bold()
            }
        }
        .padding()
    }
}

struct CreateSessionView: View {
    @State private var title = ""
    @State private var date = Date()
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Session Details")) {
                    TextField("Title", text: $title)
                    DatePicker("Date & Time", selection: $date, displayedComponents: [.date, .hourAndMinute])
                }
                
                Section {
                    Button("Create Session") {
                        // Handle session creation
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            .navigationTitle("New Session")
        }
    }
}

struct SessionsView_Previews: PreviewProvider {
    static var previews: some View {
        SessionsView()
    }
}
