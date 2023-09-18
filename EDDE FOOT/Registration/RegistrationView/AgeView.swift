//
//  AgeView.swift
//  EDDE FOOT
//
//  Created by Sattor Jabborov on 9/15/23.
//

import SwiftUI

struct AgeView: View {
    
    @State var selectedOption: Int = 0
    @Binding var buttonDisabled: Bool
    
    var body: some View {
        VStack {
            TitleView(title: "Сколко вам лет?")
            
            SelectorBoxView(option: 1, name: "12 - 17", selectedOption: $selectedOption)
            SelectorBoxView(option: 2, name: "18 - 24", selectedOption: $selectedOption)
            SelectorBoxView(option: 3, name: "25 - 34", selectedOption: $selectedOption)
            SelectorBoxView(option: 4, name: "35 - 54", selectedOption: $selectedOption)
            SelectorBoxView(option: 5, name: "55+", selectedOption: $selectedOption)
        }
        .onChange(of: selectedOption, perform: { _ in
            buttonDisabled = false
        })
    }
}

struct AgeView_Previews: PreviewProvider {
    static var previews: some View {
        AgeView(buttonDisabled: .constant(false))
    }
}
