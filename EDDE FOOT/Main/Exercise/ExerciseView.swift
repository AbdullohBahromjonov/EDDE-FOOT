//
//  ExerciseView.swift
//  EDDE FOOT
//
//  Created by Sattor Jabborov on 9/16/23.
//

import SwiftUI

struct ExerciseView: View {
    
    @State var search: String = ""
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 15, alignment: .leading),
        GridItem(.flexible(), spacing: 10, alignment: .leading)
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            TitleView(title: "Упражнения", type: .title)
                .padding(.vertical)
                .padding(.top)
            HStack {
                Image(systemName: "magnifyingglass")
                    .font(.title2)
                TextField("Поиск", text: $search)
            }
            .padding()
            .background(Color.theme.background)
            .cornerRadius(8)
            
            ScrollView {
                Text("")
                LazyVGrid(columns: columns, alignment: .center, spacing: 15, pinnedViews: [], content: {
                    ForEach(0..<12) { _ in
                        NavigationLink(
                            destination: Text("Destination"),
                            label: {
                                Rectangle()
                                    .fill(LinearGradient(gradient: Gradient(colors: [Color.theme.blue, Color.theme.pink]), startPoint: .leading, endPoint: .trailing))
                                    .opacity(0.5)
                                    .frame(height: UIScreen.main.bounds.width / 2.2)
                                    .cornerRadius(14)
                                    .overlay(
                                        TitleView(title: "Грудь", type: .navigation)
                                            .foregroundColor(.black)
                                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                                            .padding()
                                    )
                            })
                    }
                })
            }
        }
        .navigationBarHidden(true)
        .padding(.horizontal)
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ExerciseView()
        }
    }
}
