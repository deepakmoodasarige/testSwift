import SwiftUI

struct OnboardingItem: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
}

let onboardingData: [OnboardingItem] = [
    OnboardingItem(imageName: "figure.walk", title: "Welcome to the App", description: "This is a brief description of the first feature."),
    OnboardingItem(imageName: "figure.wave", title: "Explore Features", description: "Discover all the amazing things you can do."),
    OnboardingItem(imageName: "hand.thumbsup.fill", title: "Get Started", description: "You are all set to go! Enjoy the app.")
]