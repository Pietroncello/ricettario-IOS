//
//  RecipeView.swift
//  recipe book
//
//  Created by Marco Cello on 24/10/23.
//

import SwiftUI

struct RecipeView: View {
    var recipe: Recipe
    var body: some View {
        ScrollView{
            Image(recipe.image)
                .resizable()
                .aspectRatio(contentMode: .fill )
                .frame(height: 300)
                .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            VStack(spacing: 10) {
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.accent)
                    .cornerRadius(10)
                    
                HStack{
                    Image(systemName: "timer")
                    Text(String(recipe.time) + "min")
                }
                HStack{
                    Image(systemName: "flag.fill")
                    Text(String(recipe.continent))
                }
                
                VStack(alignment: .leading, spacing: 30){
                    if !recipe.description.isEmpty {
                        Text(recipe.description)
                    }
                    if !recipe.ingredients.isEmpty {
                        VStack(alignment: .leading, spacing: 20){
                            Text("Ingredients")
                                .font(.headline)
                                .foregroundStyle(Color.white)
                                .padding(10)
                                .background(Color.accent)
                                .cornerRadius(8)
                                
                            
                            Text(recipe.ingredients)
                        }
                    }
                    if !recipe.directions.isEmpty {
                        VStack(alignment: .leading, spacing: 20){
                            Text("Directions")
                                .font(.headline)
                                .foregroundStyle(Color.white)
                                .padding(10)
                                .background(Color.accent)
                                .cornerRadius(8)
                            
                            Text(recipe.directions)
                        }
                    }
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(25)
            }
            .padding(.horizontal)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

#Preview {
    RecipeView(recipe: Recipe.all[0])
}
