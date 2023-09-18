//
//  GenderView.swift
//  EDDE FOOT
//
//  Created by Sattor Jabborov on 9/15/23.
//

import SwiftUI

struct GenderView: View {
    
    @State var selectedOption: Int = 0
    @Binding var buttonDisabled: Bool
    
    var body: some View {
        VStack {
            TitleView(title: "Ваш пол:")
            
            SelectorBoxView(option: 1, name: "Мужской", imageName: "person", selectedOption: $selectedOption)
            SelectorBoxView(option: 2, name: "Женский", imageName: "person", selectedOption: $selectedOption)
        }
        .onChange(of: selectedOption, perform: { _ in
            buttonDisabled = false
        })
    }
}

struct GenderView_Previews: PreviewProvider {
    static var previews: some View {
        GenderView(buttonDisabled: .constant(false))
    }
}
