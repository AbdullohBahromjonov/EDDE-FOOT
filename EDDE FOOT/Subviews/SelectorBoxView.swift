//
//  SelectorBoxView.swift
//  EDDE FOOT
//
//  Created by Sattor Jabborov on 9/15/23.
//

import SwiftUI

struct SelectorBoxView: View {
    
    let option: Int
    let name: String
    let description: String?
    let imageName: String?
    let isBold: Bool
    @Binding var selectedOption: Int
    
    init(
        option: Int,
        name: String,
        description: String? = nil,
        imageName: String? = nil,
        isBold: Bool = false,
        selectedOption: Binding<Int>
    ) {
        self.option = option
        self.name = name
        self.description = description
        self.imageName = imageName
        self.isBold = isBold
        _selectedOption = selectedOption
    }
    
    var body: some View {
        HStack(spacing: 0) {
            if let image = imageName {
                ZStack {
                    RoundedRectangle(cornerRadius: 12.0)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2705882353, green: 0.4078431373, blue: 0.862745098, alpha: 1)), Color(#colorLiteral(red: 0.6901960784, green: 0.4156862745, blue: 0.7019607843, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
                        .frame(width: 42, height: 42)
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                }
                .padding(.trailing)
            }
            VStack(alignment: .leading) {
                Text(name)
                    .font(.system(size: 16))
                    .fontWeight(isBold ? .bold : .medium)
                if let description = description {
                    Text(description)
                        .font(.system(size: 14))
                        .foregroundColor(Color.gray)
                }
            }
            Spacer()
            Image(selectedOption == option ? "enabled" : "disabled")
                .resizable()
                .frame(width: 19, height: 19)
                .padding(.leading, 20)
        }
        .padding(20)
        .background(Color.white.cornerRadius(14))
        .onTapGesture {
            selectedOption = option
        }
        .scaleEffect(selectedOption == option ? 1.1 : 1)
        .padding(.horizontal, 40)
        .padding(.vertical, 5)
    }
}

struct SelectorBoxView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            SelectorBoxView(option: 1, name: "Русский язык", description: nil, imageName: "twemoji_flag-russia", selectedOption: .constant(0))
            SelectorBoxView(option: 2, name: "12 - 17", description: nil, imageName: nil, selectedOption: .constant(2))
            SelectorBoxView(option: 3, name: "Бесплатно", description: "Для вас подготовленно бесплатные тринеровки", imageName: nil, isBold: true, selectedOption: .constant(0))
        }
        .background(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
        .previewLayout(.sizeThatFits)
    }
    
}
