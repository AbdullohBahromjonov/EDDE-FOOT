//
//  CustomTextField.swift
//  EDDE FOOT
//
//  Created by Sattor Jabborov on 9/16/23.
//

import SwiftUI

struct CustomTextField: View {
    
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        TextField(placeholder, text: $text)
            .padding(20)
            .background(Color.white)
            .cornerRadius(14)
            .padding(30)
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(placeholder: "Введите телефон номер", text: .constant(""))
            .previewLayout(.sizeThatFits)
            .background(Color.gray)
    }
}
