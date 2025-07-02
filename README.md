# SwiftUI Onboarding Flow

This repository contains a simple, reusable onboarding flow for native iOS applications built with SwiftUI.

## Overview

The project is structured into four main files:

- **OnboardingApp.swift**: The main entry point for the SwiftUI application.
- **OnboardingItem.swift**: A data model that defines the content for each onboarding screen (image, title, and description). It also includes sample data.
- **OnboardingCardView.swift**: A SwiftUI view that displays a single onboarding card with an image, title, and description.
- **OnboardingView.swift**: The main view that manages the onboarding experience. It uses a `TabView` to allow users to swipe through the onboarding screens.

## How to Use

1.  **Integrate the files into your project**: Copy the `Onboarding` directory into your existing Xcode project.
2.  **Customize the content**: Modify the `onboardingData` array in `OnboardingItem.swift` to match your app's features and branding.
3.  **Present the onboarding flow**: In your main app view, you can present the `OnboardingView` as a sheet or full-screen cover.

## Example

```swift
import SwiftUI

@main
struct YourApp: App {
    @State private var hasCompletedOnboarding = false

    var body: some Scene {
        WindowGroup {
            if hasCompletedOnboarding {
                ContentView()
            } else {
                OnboardingView(hasCompletedOnboarding: $hasCompletedOnboarding)
            }
        }
    }
}