//
//  InputNumberView.swift
//  EDDE FOOT
//
//  Created by Sattor Jabborov on 9/16/23.
//

import SwiftUI

struct InputNumberView: View {
    
    @Binding var tellNumber: String
    @Binding var buttonDisabled: Bool
    @State var isAccauntExist: Bool = false
    
    var body: some View {
        VStack {
            if isAccauntExist {
                TitleView(title: "Вход")
                    .frame(maxWidth: .infinity)
                    .transition(.asymmetric(
                        insertion: .move(edge: .trailing),
                        removal: .move(edge: .leading)))
            } else {
                TitleView(title: "Регистрация")
                    .frame(maxWidth: .infinity)
                    .transition(.asymmetric(
                        insertion: .move(edge: .trailing),
                        removal: .move(edge: .leading)))
            }
            HStack {
                Text("+998")
                    .fontWeight(.medium)
                Divider()
                    .frame(height: 30)
                TextField("", text: $tellNumber)
                    .keyboardType(.numberPad)
                
            }
            .padding(20)
            .background(Color.white)
            .cornerRadius(14)
            .padding(30)
            
            Text(isAccauntExist ? "Регистрация" : "Уже есть аккаунт?")
                .foregroundColor(.blue)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, 30)
                .onTapGesture {
                    isAccauntExist.toggle()
                }
                .animation(nil)
            
        }
        .onChange(of: tellNumber, perform: { value in
            if value.count == 7 {
                buttonDisabled = false
            } else {
                buttonDisabled = true
            }
        })
        .onAppear() {
            if tellNumber.count == 7 {
                buttonDisabled = false
            }
        }
    }
}

struct InputNumberView_Previews: PreviewProvider {
    static var previews: some View {
        InputNumberView(tellNumber: .constant(""), buttonDisabled: .constant(false))
            .background(Color.gray)
            .previewLayout(.sizeThatFits)
    }
}
