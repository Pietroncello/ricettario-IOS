//
//  AddRecipeView.swift
//  recipe book
//
//  Created by Marco Cello on 28/10/23.
//

import SwiftUI

struct AddRecipeView: View {
    @State private var name : String = ""
    @State private var selectedCategory : Category = Category.primo
    @State private var selectedContinent : String = ""
    @State private var time : String = ""
    @State private var description : String = ""
    @State private var ingredients : String = ""
    @State private var directions : String = ""
    
    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("Name")) {
                    TextField("Recipe name", text: $name)
                }
                
                Section(header: Text("Category")) {
                    Picker("Category", selection: $selectedCategory){
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                }
                
                Section(header: Text("Continent")) {
                    TextField("Recipe name", text: $selectedContinent)
                }
                
                Section(header: Text("Time")) {
                    TextEditor(text: $time)
                    
                }
                
                Section(header: Text("Description")) {
                    TextEditor(text: $description)
                }
                
                Section(header: Text("Ingredients")) {
                    TextEditor(text: $ingredients)
                    
                }
                
                Section(header: Text("Directions")) {
                    TextEditor(text: $directions)
                    
                }
                
                
            }
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading){
                    Button{
                        
                    }label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                ToolbarItem{
                    Button{
                        
                    }label: {
                        Label("Done", systemImage: "checkmark")
                            .labelStyle(.iconOnly)
                    }
                    .disabled(name.isEmpty)
                }
            })
           
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    AddRecipeView()
}
