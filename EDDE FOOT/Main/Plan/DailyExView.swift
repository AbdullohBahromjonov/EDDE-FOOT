//
//  DailyExView.swift
//  EDDE FOOT
//
//  Created by Sattor Jabborov on 9/18/23.
//

import SwiftUI

struct DailyExView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                BackButton()
                    .frame(maxWidth: .infinity, alignment: .leading)
                TitleView(title: "День 1", type: .title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.top)
                ScrollView {
                    ForEach(0..<7) { i in
                        NavigationLink(
                            destination: ExInfoView(),
                            label: {
                                scrollItem
                            })
                    }
                }
            }
            .navigationBarHidden(true)
            CustomButton(name: "Начать тренировку") {
                
            }
            .padding(.top)
            .background(Color.white.ignoresSafeArea().shadow(color: Color.black.opacity(0.2), radius: 10))
        }
    }
    
    var scrollItem: some View {
        HStack(spacing: 0) {
            Image(systemName: "photo.on.rectangle.angled")
                .frame(width: 74, height: 74)
                .background(Color.secondary.opacity(0.5))
                .clipShape(RoundedRectangle(cornerRadius: 6))
                .padding(.horizontal)
            VStack(alignment: .leading, spacing: 8) {
                Text("Скалолаз")
                    .fontWeight(.bold)
                Text("1 • 5 •  25с")
                    .foregroundColor(.gray)
            }
            .font(.subheadline)
            Spacer()
            Image(systemName: "chevron.right")
                .font(.title2)
                .foregroundColor(.gray)
                .padding()
        }
        .foregroundColor(.black)
        .padding(.bottom)
    }
}

struct DailyExView_Previews: PreviewProvider {
    static var previews: some View {
        DailyExView()
    }
}
