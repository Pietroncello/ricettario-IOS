//
//  RecipeCard.swift
//  recipe book
//
//  Created by Marco Cello on 24/10/23.
//

import SwiftUI

struct RecipeCard: View {
    var recipe: Recipe
    var body: some View {
        HStack{
            //Image("Vetri neri")
            //.frame(width: 100, height: 100)
            VStack {
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 140)
                    .cornerRadius(20)
                    .padding(10)
                    .shadow(color: .blue,radius: 5)
                
            }
            VStack(alignment: .leading){
                Text(recipe.name)
                    .fontWeight(.bold)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .lineLimit(2, reservesSpace: true)
                    .fixedSize(horizontal: false, vertical: true)
                
                
                HStack{
                    Image(systemName: "timer")
                    Text(String(recipe.time) + "min")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                Text(recipe.continent)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
            }
            
            .frame(maxWidth: 150)
            
        }
        
        
    }
}

#Preview {
    RecipeCard(recipe: Recipe.all[0])
}
