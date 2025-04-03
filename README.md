#CampusConnect

## Features

### Authentication Flow
- **Sign In (Registration) Screen**
  - Email, full name, password fields
  - Password visibility toggle
  - Form validation
- **Login Screen**
  - Email and password fields
  - Remember me checkbox
  - Forgot password option
  - Social login buttons (Google, Facebook, Apple)

### Main Application Tabs
1. **Home Tab** - Feed of recent activities
2. **Session Tab** - Live/upcoming sessions
3. **Group Tab** - Community groups
4. **Profile Tab** - User profile and settings


### Technical Highlights
- MVVM architecture pattern
- ObservableObject for state management
- Custom SwiftUI components
- Tab-based navigation
- Shared authentication state

## Project Structure (MVVM)
StudyConnect/
├── StudyConnect/
│ ├── Preview Content/ # Preview assets
│ ├── Views/
│ │ ├── GroupView.swift # Groups functionality
│ │ ├── HomeView.swift # Main feed
│ │ ├── LoginView.swift # Login screen
│ │ ├── ProfileView.swift # User profile
│ │ ├── SessionsView.swift # Study sessions
│ │ ├── SigninView.swift # Registration
│ │ ├── Tabs/ # Tab navigation
│ │ ├── ContentView.swift # Main container
│ ├── Preview Assets/ # Assets for previews
│ ├── Assets.xcassets # App assets
│ ├── StudyConnectApp.swift # App entry point (M)
│
├── StudyConnectTests/ # Unit tests
├── StudyConnectUITests/ # UI tests

