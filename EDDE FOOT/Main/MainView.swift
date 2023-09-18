//
//  MainView.swift
//  EDDE FOOT
//
//  Created by Sattor Jabborov on 9/16/23.
//

import SwiftUI

struct MainView: View {
    
    @State var selectedTab: Tab = .exercises
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom) {
                switch selectedTab {
                case .myPlan:
                    PlanView()
                case .exercises:
                    ExerciseView()
                case .lessons:
                    Text("my plan")
                case .chat:
                    Text("my plan")
                case .profile:
                    Text("my plan")
                }
            CustomTabBar(selectedTab: $selectedTab)
                .navigationBarHidden(true)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
