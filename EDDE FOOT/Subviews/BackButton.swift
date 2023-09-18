//
//  BackButton.swift
//  EDDE FOOT
//
//  Created by Sattor Jabborov on 9/17/23.
//

import SwiftUI

struct BackButton: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Image(systemName: "chevron.left")
            .font(.title2)
            .foregroundColor(.blue)
            .padding()
            .onTapGesture {
                presentationMode.wrappedValue.dismiss()
            }
    }
}

struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton()
    }
}
