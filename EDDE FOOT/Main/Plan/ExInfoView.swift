//
//  ExInfoView.swift
//  EDDE FOOT
//
//  Created by Sattor Jabborov on 9/18/23.
//

import SwiftUI

struct ExInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                BackButton()
                TitleView(title: "Бег на месте с подъемом колен", type: .navigation)
                Spacer()
                Text("Готово")
                    .foregroundColor(Color.theme.blue)
                    .padding()
                    .padding(.leading)
            }
            .background(Color.theme.background.ignoresSafeArea().shadow(color: .black, radius: 1))
            
            TitleView(title: "Бег на месте с подъемом колен", type: .title)
                .padding()
                .padding(.trailing, 30)
            
            Image("PlanImage")
                .resizable()
                .scaledToFill()
                .frame(height: 220)
                .clipped()
            
            Spacer()
            
            CustomButton(name: "Начать") {
                
            }
            
            Button(action: {
                
            }, label: {
                Capsule()
                    .stroke(lineWidth: 3)
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.theme.blue, Color.theme.pink]), startPoint: .leading, endPoint: .trailing))
                    .frame(height: 65)
                    .overlay(
                        HStack {
                            Text("Следующий")
                                .font(.title3)
                                .fontWeight(.heavy)
                            Image(systemName: "chevron.right")
                        }
                        .foregroundColor(.black)
                    )
            })
            .padding(.horizontal)
        }
        .navigationBarHidden(true)
    }
}

struct ExInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ExInfoView()
    }
}
