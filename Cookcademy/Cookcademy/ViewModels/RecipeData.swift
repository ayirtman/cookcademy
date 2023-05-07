//
//  RecipeData.swift
//  Cookcademy
//
//  Created by Batuhan Ayırtman on 07.05.23.
//

import Foundation

class RecipeData: ObservableObject {
    @Published var recipes = Recipe.testRecipes
}
