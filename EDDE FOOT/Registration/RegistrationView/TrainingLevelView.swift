//
//  TrainingLevelView.swift
//  EDDE FOOT
//
//  Created by Sattor Jabborov on 9/15/23.
//

import SwiftUI

struct TrainingLevelView: View {
    
    @State var selectedOption: Int = 0
    @Binding var buttonDisabled: Bool
    
    var body: some View {
        VStack {
            TitleView(title: "Уровень подготовки:")
            
            SelectorBoxView(option: 1, name: "Начинающий", description: "Только начинаю", imageName: "fireLow", selectedOption: $selectedOption)
            SelectorBoxView(option: 2, name: "Средний", description: "Регулярно тренируюсь", imageName: "fireMiddle", selectedOption: $selectedOption)
            SelectorBoxView(option: 3, name: "Продвинутый", description: "Опытный спортсмен", imageName: "fireFull", selectedOption: $selectedOption)
        }
        .onChange(of: selectedOption, perform: { _ in
            buttonDisabled = false
        })
    }
}

struct TrainigLevelView_Previews: PreviewProvider {
    static var previews: some View {
        TrainingLevelView(buttonDisabled: .constant(false))
    }
}
