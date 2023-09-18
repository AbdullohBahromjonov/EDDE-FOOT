//
//  RegisterationView.swift
//  EDDE FOOT
//
//  Created by Sattor Jabborov on 9/15/23.
//

import SwiftUI

struct RegisterationView: View {
    
    @StateObject var vm: RegisterationViewModel = RegisterationViewModel()
    @Binding var mainSection: Int
    
    var body: some View {
        ZStack {
            
            Color.theme.background.ignoresSafeArea()
            
            VStack {
                if vm.section != 1 {
                    backButton
                }
                
                Spacer()
                
                switch vm.section {
                case 1:
                    LanguageView(buttonDisabled: $vm.buttonDisabled)
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing),
                            removal: .move(edge: .leading)))
                case 2:
                    InputNumberView(tellNumber: $vm.tellNumber, buttonDisabled: $vm.buttonDisabled)
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing),
                            removal: .move(edge: .leading)))
                case 3:
                    VerifyNumberView(buttonDisabled: $vm.buttonDisabled, vm: vm)
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing),
                            removal: .move(edge: .leading)))
                case 4:
                    WhoAreYouView(buttonDisabled: $vm.buttonDisabled)
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing),
                            removal: .move(edge: .leading)))
                case 5:
                    InputNameView(buttonDisabled: $vm.buttonDisabled, name: $vm.name)
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing),
                            removal: .move(edge: .leading)))
                case 6:
                    GenderView(buttonDisabled: $vm.buttonDisabled)
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing),
                            removal: .move(edge: .leading)))
                case 7:
                    AgeView(buttonDisabled: $vm.buttonDisabled)
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing),
                            removal: .move(edge: .leading)))
                case 8:
                    TrainingLevelView(buttonDisabled: $vm.buttonDisabled)
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing),
                            removal: .move(edge: .leading)))
                case 9:
                    TariffViev(buttonDisabled: $vm.buttonDisabled)
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing),
                            removal: .move(edge: .leading)))
                default:
                    Text("Error")
                }
                
                Spacer()
                IndicatorView(numOfDots: 9, indicate: $vm.section)
                    .padding()
                CustomButton(name: vm.section == 2 ? "Отправить код" : "Далее", withArrow: true) {
                    if vm.section < 9 {
                        vm.buttonDisabled = true
                        vm.section += 1
                    } else if vm.section == 9 {
                        mainSection += 1
                    }
                }
                .opacity(vm.buttonDisabled ? 0.6 : 1)
                .padding(.bottom)
                .padding(.horizontal)
                .disabled(vm.buttonDisabled)
            }
        }
    }
    
    var backButton: some View {
        HStack {
            Image(systemName: "arrow.left")
                .resizable()
                .frame(width: 24, height: 17)
                .padding()
                .onTapGesture {
                    if vm.section == 4 {
                        vm.section = 2
                    } else if vm.section > 1 {
                        vm.section -= 1
                    }
                }
                .padding(.leading)
            Spacer()
        }
    }
}

struct RegisterationView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterationView(mainSection: .constant(2))
    }
}
