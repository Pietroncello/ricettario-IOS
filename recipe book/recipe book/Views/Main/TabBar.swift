//
//  TabBar.swift
//  recipe book
//
//  Created by Marco Cello on 21/10/23.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            CategoriesView()
                .tabItem {
                    Label("Categories", systemImage: "camera.filters")
                }
            
            AddRecipeView()
                .tabItem {
                    Label("Add", systemImage: "plus")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    TabBar()
}
