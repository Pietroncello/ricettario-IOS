//
//  CategoriesView.swift
//  recipe book
//
//  Created by Marco Cello on 21/10/23.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(Category.allCases) { category in
                    NavigationLink() {
                        ScrollView {
                            RecipeList(recipes: Recipe.all.filter{ $0.category == category.rawValue })
                        }
                    } label: {
                        Text(category.rawValue)
                    }
                    
                    
                }
            }
            .navigationTitle("Categories")
        }
    }
}

#Preview {
    CategoriesView()
}
