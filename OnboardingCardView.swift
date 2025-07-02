import SwiftUI

struct OnboardingCardView: View {
    var item: OnboardingItem

    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: item.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .foregroundColor(.accentColor)

            Text(item.title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)

            Text(item.description)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        }
        .padding()
    }
}