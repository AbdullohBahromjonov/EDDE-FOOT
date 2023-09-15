//
//  SelectorBoxView.swift
//  EDDE FOOT
//
//  Created by Sattor Jabborov on 9/15/23.
//

import SwiftUI

struct SelectorBoxView: View {
    
    let name: String
    let description: String?
    let imageName: String?
    @State var isPressed: Bool = false
    
    init(name: String, description: String? = nil, imageName: String? = nil) {
        self.name = name
        self.description = description
        self.imageName = imageName
    }
    
    var body: some View {
        HStack(spacing: 0) {
            if let image = imageName {
                ZStack {
                    RoundedRectangle(cornerRadius: 12.0)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2705882353, green: 0.4078431373, blue: 0.862745098, alpha: 1)), Color(#colorLiteral(red: 0.6901960784, green: 0.4156862745, blue: 0.7019607843, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
                        .frame(width: 42, height: 42)
                    Image(image)
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                }
                .padding(.leading)
            }
            VStack {
                Text(name)
                    .fontWeight(.medium)
                if let description = description {
                    Text(description)
                        .foregroundColor(Color.gray)
                }
            }
            .padding(.leading)
            
            Spacer()
            Image(isPressed ? "enabled" : "disabled")
                .frame(width: 17, height: 17)
                .padding()
        }
        .frame(height: 74)
        .background(Color.white.cornerRadius(14))
        .onTapGesture {
            withAnimation {
                isPressed.toggle()
            }
        }
        .scaleEffect(isPressed ? 1.1 : 1)
        .padding(.horizontal, 40)
        .padding(.vertical, 10)
    }
}

struct SelectorBoxView_Previews: PreviewProvider {
    static var previews: some View {
        SelectorBoxView(name: "Русский язык", description: nil, imageName: "twemoji_flag-russia")
            .background(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
            .previewLayout(.sizeThatFits)
    }
    
}
