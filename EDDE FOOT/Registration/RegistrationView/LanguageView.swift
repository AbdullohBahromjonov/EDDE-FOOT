//
//  LanguageView.swift
//  EDDE FOOT
//
//  Created by Sattor Jabborov on 9/15/23.
//

import SwiftUI

struct LanguageView: View {
    
    @State var selectedOption: Int = 0
    @Binding var buttonDisabled: Bool
    
    var body: some View {
        VStack {
            TitleView(title: "Выбирите язык:")
            
            SelectorBoxView(option: 1, name: "Русский язык", imageName: "flagRU", selectedOption: $selectedOption)
            SelectorBoxView(option: 2, name: "Узбекский язык", imageName: "flagUZ", selectedOption: $selectedOption)
            SelectorBoxView(option: 3, name: "Английский язык", imageName: "flagUSA", selectedOption: $selectedOption)
        }
        .onChange(of: selectedOption, perform: { _ in
            buttonDisabled = false
        })
    }
}

struct LanguageView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageView(buttonDisabled: .constant(false))
    }
}
