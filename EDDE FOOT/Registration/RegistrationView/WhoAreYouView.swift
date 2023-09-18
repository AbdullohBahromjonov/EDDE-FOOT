//
//  WhoAreYouView.swift
//  EDDE FOOT
//
//  Created by Sattor Jabborov on 9/15/23.
//

import SwiftUI

struct WhoAreYouView: View {
    
    @State var selectedOption: Int = 0
    @Binding var buttonDisabled: Bool
    
    var body: some View {
        VStack {
            TitleView(title: "Кто вы?")

            SelectorBoxView(option: 1, name: "Родитель", imageName: "family", selectedOption: $selectedOption)
            SelectorBoxView(option: 2, name: "Ребёнок", imageName: "profileBold", selectedOption: $selectedOption)
            SelectorBoxView(option: 3, name: "Сотрудники", imageName: "profileBold", selectedOption: $selectedOption)
        }
        .onChange(of: selectedOption, perform: { _ in
            buttonDisabled = false
        })
    }
}

struct WhoAreYouView_Previews: PreviewProvider {
    static var previews: some View {
        WhoAreYouView(buttonDisabled: .constant(false))
    }
}
