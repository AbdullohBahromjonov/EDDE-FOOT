//
//  CustomTabBar.swift
//  EDDE FOOT
//
//  Created by Sattor Jabborov on 9/16/23.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case myPlan = "Мой план"
    case exercises = "Упражнения"
    case lessons = "Уроки"
    case chat = "Чат"
    case profile = "Профиль"
}

struct CustomTabBar: View {
    
    @Binding var selectedTab: Tab
    @State var sizeOfTab: CGFloat = 56
    @Namespace var namespace
    
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(Tab.allCases, id: \.self) { tab in
                if tab != .myPlan {
                    Spacer(minLength: 0)
                }
                ZStack {
                    if selectedTab == tab {
                        Capsule()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.theme.blue, Color.theme.pink]), startPoint: .leading, endPoint: .trailing))
                        .matchedGeometryEffect(id: "ID", in: namespace)
                            .frame(width: 130, height: 50)
                    }
                    HStack {
                        Image(tab.rawValue)
                            .renderingMode(.template)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                            .foregroundColor(tab == selectedTab ? .white : .secondary)
                            .onTapGesture {
                                selectedTab = tab
                            }
                        if tab == selectedTab {
                            Text(tab.rawValue)
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .lineLimit(1)
                                .minimumScaleFactor(0.8)
                        }
                    }
                    .padding()
                }
            }
        }
        .padding()
        .background(Color.white.shadow(radius: 10).ignoresSafeArea())
        .animation(.easeIn)
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectedTab: .constant(.chat))
    }
}
