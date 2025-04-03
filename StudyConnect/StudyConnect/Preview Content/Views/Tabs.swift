import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            GroupView()
                .tabItem {
                    Label("Groups", systemImage: "person.3.fill")
                }
            
            SessionView()
                .tabItem {
                    Label("Sessions", systemImage: "clock.fill")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle.fill")
                }
        }
        .tint(.blue) 
    }
}










struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

