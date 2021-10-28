//
//  HomeView.swift
//  Restart
//
//  Created by Simon Rofe on 28/10/21.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false

    var body: some View {
        VStack {
            Text("Home View")
                .font(.largeTitle)
            Button(action: {
                isOnboardingViewActive = true
            }) {
                Text("Restart")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
