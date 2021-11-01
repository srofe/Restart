//
//  CircleGroupView.swift
//  Restart
//
//  Created by Simon Rofe on 2/11/21.
//

import SwiftUI

struct CircleGroupView: View {
    @State var shapeColour: Color
    @State var shapeOpacity: Double

    var body: some View {
        ZStack {
            Circle()
                .stroke(shapeColour.opacity(shapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(shapeColour.opacity(shapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColourBlue")
                .ignoresSafeArea(.all, edges: .all)
            CircleGroupView(shapeColour: .white, shapeOpacity: 0.2)
        }
    }
}
