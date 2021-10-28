//
//  OnboardingView.swift
//  Restart
//
//  Created by Simon Rofe on 28/10/21.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true

    var body: some View {
        VStack {
            Text("Onboarding")
                .font(.largeTitle)
            Button(action: {
                isOnboardingViewActive = false
            }) {
                Text("Start")
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
