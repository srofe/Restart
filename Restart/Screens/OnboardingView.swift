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
        ZStack {
            Color("ColourBlue")
                .ignoresSafeArea(.all, edges: .all)
            VStack {
                Spacer()
                VStack(spacing: 0) {
                    Text("Share.")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    Text("""
                        It's not how much we give but
                        how much love we put into giving.
                        """)
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 10)
                }
                ZStack {
                    ZStack {
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 40)
                            .frame(width: 260, height: 260, alignment: .center)
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 80)
                            .frame(width: 260, height: 260, alignment: .center)
                        Image("character-1")
                            .resizable()
                            .scaledToFit()
                    }
                }
                ZStack {
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                    HStack {
                        Capsule()
                            .fill(Color("ColourRed"))
                            .frame(width: 80)
                            Spacer()
                    }
                    ZStack {
                        Circle()
                            .fill(Color("ColourRed"))
                        Circle()
                            .fill(.black.opacity(0.15))
                            .padding(8)
                    }
                    .foregroundColor(.white)
                    .frame(width: 80, height: 80, alignment: .center)
                }
                .frame(height: 80, alignment: .center)
                .padding()
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
