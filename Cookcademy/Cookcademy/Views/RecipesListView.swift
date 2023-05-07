//
//  ContentView.swift
//  Cookcademy
//
//  Created by Batuhan Ayırtman on 07.05.23.
//

import SwiftUI

struct RecipesListView: View {
    @StateObject var recipeData = RecipeData()
    
    var body: some View {
        List{
            ForEach(recipeData.recipes){
                recipe in Text(recipe.mainInformation.name)
            }
        }
        .navigationTitle("All Recipes")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            RecipesListView()
        }
        
    }
}
