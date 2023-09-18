//
//  PlanView.swift
//  EDDE FOOT
//
//  Created by Sattor Jabborov on 9/16/23.
//

import SwiftUI

struct PlanView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Image("PlanImage")
                    .resizable()
                    .scaledToFill()
                    .frame(height: UIScreen.main.bounds.height / 3)
                    .ignoresSafeArea()
                Color.clear
            }
            VStack {
                Text("Планы")
                    .font(.title3)
                    .bold()
                    .padding(30)
                    
                ScrollView {
                    ForEach(0..<4) { _ in
                        NavigationLink(destination: PlanDays(), label: {
                            scrollItem
                        })
                    }
                }
                .frame(height: UIScreen.main.bounds.height / 1.76)
            }
            .background(Color.theme.background.cornerRadius(24).ignoresSafeArea())
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
                Text("Бег на месте с подъемом колен")
                    .fontWeight(.bold)
                Text("14 дней")
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

struct PlanView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PlanView()
        }
    }
}
