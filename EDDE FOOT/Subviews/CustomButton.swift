//
//  CustomButton.swift
//  EDDE FOOT
//
//  Created by Abdulloh on 15/09/23.
//

import SwiftUI

struct CustomButton: View {
    let name: String
    var withArrow = false
    var withPlus = false
    var withShadow = true
    let actionHandler: ()->()
    
    var body: some View {
        Button(
            action: {
                actionHandler()
            },
            label: {
                HStack {
                    if withPlus {
                        Image(systemName: "plus")
                            .foregroundColor(.white)
                            .font(.title)
                    }
                    
                    Text(name)
                        .font(.title3)
                        .fontWeight(.heavy)
                    
                    if withArrow {
                        Image(systemName: "chevron.right")
                            .font(.title2)
                    }
                }
                .font(.system(size: 16, weight: .bold))
                .frame(height: 65)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.theme.blue, Color.theme.pink]),
                        startPoint: .leading,
                        endPoint: .trailing)
                        .clipShape(Capsule())
                        .shadow(color: Color.theme.blue.opacity(0.5), radius:withShadow ? 10 : 0, x: 0.0, y: 10.0)
                )
                .padding(.horizontal)
            }
        )
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(name: "Начать", withArrow: true, withPlus: true, actionHandler: {})
            .padding()
            .background(Color.black)
            .previewLayout(.sizeThatFits)
    }
}
