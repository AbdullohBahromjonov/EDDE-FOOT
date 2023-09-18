//
//  VerifyNumberView.swift
//  EDDE FOOT
//
//  Created by Sattor Jabborov on 9/16/23.
//

import SwiftUI

struct VerifyNumberView: View {
    
    @Binding var buttonDisabled: Bool
    @State var code: String = ""
    @ObservedObject var vm: RegisterationViewModel
    
    var body: some View {
        VStack {
            TitleView(title: "Подтвердите номер")
            
            CustomTextField(placeholder: "Введите код", text: $code)
                .overlay(
                    Text("\(vm.time)c")
                        .font(.callout)
                        .foregroundColor(.blue)
                        .frame(width: 50)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing, 40)
                )
        }
        .onAppear() {
            vm.time = 59
            vm.countDown()
        }
        .onChange(of: code, perform: { value in
            if code.count > 3 {
                buttonDisabled = false
            } else {
                buttonDisabled = true
            }
        })
    }
}

struct VerifyNumberView_Previews: PreviewProvider {
    static var previews: some View {
        VerifyNumberView(buttonDisabled: .constant(false), vm: RegisterationViewModel())
            .background(Color.gray)
    }
}
