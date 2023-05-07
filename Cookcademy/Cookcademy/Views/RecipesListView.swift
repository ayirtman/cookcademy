//
//  ContentView.swift
//  Cookcademy
//
//  Created by Batuhan Ayırtman on 07.05.23.
//

import SwiftUI

struct RecipesListView: View {
    @StateObject var recipeData = RecipeData()
    
    private let listBackgroundColor = AppColor.background
    private let listTextClolor = AppColor.foreground
    
    var body: some View {
        List{
            ForEach(recipes){
                recipe in NavigationLink(recipe.mainInformation.name, destination: RecipeDetailView(recipe: recipe))
            }
            .listRowBackground(listBackgroundColor)
            .foregroundColor(listTextClolor)
        }
        .navigationTitle(navigationTitle)
    }
}

extension RecipesListView{
    var recipes: [Recipe] {
        recipeData.recipes
    }
    
    var navigationTitle: String {
        "All Recipes"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            RecipesListView()
        }
        
    }
}

