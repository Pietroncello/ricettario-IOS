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
                    .shadow(color: .black,radius: 5)
                
            }
            VStack(alignment: .leading){
                Text(recipe.name)
                    .fontWeight(.semibold)
                    .font(.title2)
                    .foregroundStyle(Color.accent)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .lineLimit(2, reservesSpace: true)
                    .fixedSize(horizontal: false, vertical: true)
                
                
                HStack{
                    Image(systemName: "timer")
                        .foregroundStyle(.black)
                    Text(String(recipe.time) + "min")
                        .foregroundStyle(.black)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                HStack{
                    Image(systemName: "flag.fill")
                        .foregroundStyle(.black)
                    Text(recipe.continent)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundStyle(.black)
                    
                }
            }
            
            .frame(maxWidth: 150)
            
        }
        .background(Color.main)
        .cornerRadius(20)
        
    }
}

#Preview {
    RecipeCard(recipe: Recipe.all[0])
}
