//
//  PlanDays.swift
//  EDDE FOOT
//
//  Created by Sattor Jabborov on 9/17/23.
//

import SwiftUI

struct PlanDays: View {
    var body: some View {
        VStack(spacing: 0) {
            BackButton()
                .frame(maxWidth: .infinity, alignment: .leading)
            TitleView(title: "План", type: .title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .padding(.top)
            ScrollView {
                ForEach(1..<7) { i in
                    if i == 1 {
                        NavigationLink(destination: DailyExView(), label: {
                            scrollItem(day: i, lock: false, currentDay: true)
                        })
                    } else if i < 4 {
                        NavigationLink(destination: DailyExView(), label: {
                            scrollItem(day: i, lock: false, currentDay: false)
                        })
                    } else {
                        scrollItem(day: i, lock: true, currentDay: false)
                    }
                }
            }
        }
        .background(Color.white.ignoresSafeArea())
        .navigationBarHidden(true)
    }
    
    func scrollItem(day: Int, lock: Bool, currentDay: Bool) -> some View {
        VStack(spacing: 0) {
            Image("PlanImage")
                .resizable()
                .frame(height: 220)
            Text("День \(day)")
                .foregroundColor(currentDay ? .white : .black)
                .frame(height: 48)
                .padding(.horizontal)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(currentDay ?
                    LinearGradient(gradient: Gradient(colors: [Color.theme.blue, Color.theme.pink]), startPoint: .leading, endPoint: .trailing)
                    : nil
                )
        }
        .blur(radius: lock ? 12 : 0)
        .overlay(
            VStack {
                if lock {
                    Image("lock")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 51, height: 51)
                }
            }
        )
        .background(Color.theme.background)
        .cornerRadius(14)
        .padding(.horizontal)
        .padding(.top)
        .shadow(color: Color.black.opacity(0.1), radius: 10, y: 10)
    }
}

struct PlanDays_Previews: PreviewProvider {
    static var previews: some View {
        PlanDays()
    }
}
