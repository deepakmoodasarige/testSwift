import SwiftUI

struct OnboardingView: View {
    @State private var currentTab = 0

    var body: some View {
        VStack {
            TabView(selection: $currentTab) {
                ForEach(onboardingData.indices, id: \.self) { index in
                    OnboardingCardView(item: onboardingData[index])
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))

            Button(action: {
                // Action to dismiss onboarding
            }) {
                Text(currentTab == onboardingData.count - 1 ? "Get Started" : "Next")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}