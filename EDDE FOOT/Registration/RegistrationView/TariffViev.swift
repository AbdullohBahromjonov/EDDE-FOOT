//
//  TariffViev.swift
//  EDDE FOOT
//
//  Created by Sattor Jabborov on 9/15/23.
//

import SwiftUI

struct TariffViev: View {
    
    @State var selectedOption: Int = 0
    @Binding var buttonDisabled: Bool
    
    var body: some View {
        VStack {
            TitleView(title: "Выбирите тариф:")
            
            SelectorBoxView(option: 1, name: "Бесплатно", description: "Для вас подготовленно бесплатные тринеровки", isBold: true, selectedOption: $selectedOption)
            SelectorBoxView(option: 2, name: "59 900 сум в месяц", description: "599 000 сум за 12 месяцев", isBold: true, selectedOption: $selectedOption)
            SelectorBoxView(option: 3, name: "99 900 сум в месяц", description: "899 000 сум за 12 месяцев", isBold: true, selectedOption: $selectedOption)
        }
        .onChange(of: selectedOption, perform: { _ in
            buttonDisabled = false
        })
    }
}

struct TariffViev_Previews: PreviewProvider {
    static var previews: some View {
        TariffViev(buttonDisabled: .constant(false))
    }
}
