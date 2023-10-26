//
//  NewRecipeView.swift
//  recipe book
//
//  Created by Marco Cello on 21/10/23.
//

import SwiftUI

struct NewRecipeView: View {
    var body: some View {
        NavigationView{
            Text("Add a new recipe")
                .navigationTitle("Add recipe")
        }
    }
}

#Preview {
    NewRecipeView()
}
