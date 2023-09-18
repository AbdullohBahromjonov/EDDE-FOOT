//
//  EnterScreen.swift
//  EDDE FOOT
//
//  Created by Abdulloh on 15/09/23.
//

import SwiftUI

struct EnterScreen: View {
    
    @Binding var section: Int
    
    var body: some View {
        ZStack {
            Image("Enter")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
                .frame(maxHeight: .infinity)
            
            VStack {
                Spacer()
                
                ZStack {
                    LinearGradient(
                        gradient: Gradient(colors: [Color.theme.purple, Color.clear]),
                        startPoint: .bottom,
                        endPoint: .top)
                        .frame(height: 186)
                    
                    CustomButton(name: "Начать", actionHandler: {section += 1})
                    .offset(y: 10)
                }
            }
        }
    }
}

struct EnterScreen_Previews: PreviewProvider {
    static var previews: some View {
        EnterScreen(section: .constant(1))
    }
}
