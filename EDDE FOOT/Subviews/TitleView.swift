//
//  TitleView.swift
//  EDDE FOOT
//
//  Created by Sattor Jabborov on 9/16/23.
//

import SwiftUI

struct TitleView: View {
    
    let title: String
    let type: TextType
    
    init(title: String, type: TextType = .registeration) {
        self.title = title
        self.type = type
    }
    
    enum TextType {
        case registeration
        case navigation
        case title
    }
    
    var body: some View {
        Text(title)
            .font(type == .navigation ? .headline : type == .title ? .title : .title2)
            .kerning(type == .title ? 0.7 : 0)
            .fontWeight(.bold)
            .lineLimit(type == .title ? 3 : 0)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TitleView(title: "Выбирите язык:")
            TitleView(title: "Бег на месте с подъемом колен", type: .title)
            TitleView(title: "Пресс", type: .navigation)
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
