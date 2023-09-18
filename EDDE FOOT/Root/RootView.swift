//
//  RootView.swift
//  EDDE FOOT
//
//  Created by Sattor Jabborov on 9/16/23.
//

import SwiftUI

struct RootView: View {
    
    @State var section: Int = 3
    
    var body: some View {
        ZStack {
            // Background
            Color.white.ignoresSafeArea()
            
            // Foreground
            switch section {
            case 1:
                EnterScreen(section: $section)
                    .transition(AnyTransition.opacity)
            case 2:
                RegisterationView(mainSection: $section)
                    .transition(.asymmetric(
                        insertion: AnyTransition.opacity,
                        removal: .move(edge: .leading)))
            case 3:
                MainView()
                    .transition(.asymmetric(
                        insertion: .move(edge: .trailing),
                        removal: .move(edge: .leading)))
            default :
                Text("Error")
            }
        }
        .animation(.easeIn)
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
