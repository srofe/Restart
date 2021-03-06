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
        VStack(spacing: 20) {
            header
            centre
            footer
        }
    }

    fileprivate var header: some View {
        Group {
            Spacer()
            ZStack {
                CircleGroupView(shapeColour: .gray, shapeOpacity: 0.1)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
        }
    }

    fileprivate var centre: some View {
        Group {
            Text("The time that leads to mastery is dependent on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
        }
    }

    fileprivate var footer: some View {
        Button(action: {
            isOnboardingViewActive = true
        }) {
            Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                .imageScale(.large)
            Text("Restart")
                .font(.system(.title3, design: .rounded))
                .fontWeight(.bold)
        }
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.capsule)
        .controlSize(.large)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
