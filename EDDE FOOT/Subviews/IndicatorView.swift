//
//  IndicatorView.swift
//  EDDE FOOT
//
//  Created by Sattor Jabborov on 9/16/23.
//

import SwiftUI

struct IndicatorView: View {
    
    let numOfDots: Int
    @Binding var indicate: Int
    
    var body: some View {
        HStack(spacing: 2) {
            ForEach(1..<numOfDots + 1) { index in
                Capsule()
                    .frame(width: index == indicate ? 20 : 6, height: 6)
                    .foregroundColor(index == indicate ? Color(#colorLiteral(red: 0.6784313725, green: 0.6431372549, blue: 0.6470588235, alpha: 1)) : Color(#colorLiteral(red: 0.8666666667, green: 0.8549019608, blue: 0.8549019608, alpha: 1)))
            }
        }
    }
}

struct IndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        IndicatorView(numOfDots: 9, indicate: .constant(3))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
