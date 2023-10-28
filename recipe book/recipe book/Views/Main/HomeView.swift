//
//  HomeView.swift
//  recipe book
//
//  Created by Marco Cello on 21/10/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            ScrollView {
                VStack {
                    RecipeList(recipes: Recipe.all)
                }
            }.navigationTitle("Your Recipes")
            
        }
    }
}

#Preview {
    HomeView()
}
