//
//  InputNameView.swift
//  EDDE FOOT
//
//  Created by Sattor Jabborov on 9/16/23.
//

import SwiftUI

struct InputNameView: View {
    
    @Binding var buttonDisabled: Bool
    @Binding var name: String
    
    var body: some View {
        VStack {
            TitleView(title: "Как вас зовут?")
            
            CustomTextField(placeholder: "Введите ваше имя", text: $name)
        }
        .onChange(of: name, perform: { _ in
            if name.count > 3 {
                buttonDisabled = false
            } else {
                buttonDisabled = true
            }
        })
    }
}

struct InputNameView_Previews: PreviewProvider {
    static var previews: some View {
        InputNameView(buttonDisabled: .constant(false), name: .constant(""))
    }
}
