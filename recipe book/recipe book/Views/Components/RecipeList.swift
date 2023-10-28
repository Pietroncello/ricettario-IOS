//
//  RecipeList.swift
//  recipe book
//
//  Created by Marco Cello on 24/10/23.
//

import SwiftUI

struct RecipeList: View {
    var recipes: [Recipe]
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack{
                ForEach(recipes) { recipe in
                    NavigationLink(destination: RecipeView(recipe: recipe)){
                        RecipeCard(recipe: recipe)
                    }
                    
                    
                }
                
            }
        }
    }
}

#Preview {
    RecipeList(recipes: Recipe.all)
}
