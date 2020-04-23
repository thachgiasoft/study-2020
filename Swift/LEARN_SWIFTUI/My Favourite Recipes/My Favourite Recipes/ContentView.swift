//
//  ContentView.swift
//  My Favourite Recipes
//
//  Created by sh0 on 2020/04/22.
//  Copyright © 2020 com.shofujimoto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var recipes = [RecipeModel]()
    
    var recipeNames = [String]()
    var sampleNames = [String]()
    
    //@ObservedObject var recipeModel = RecipeModel()
    
    var body: some View {
        Group {
            VStack(alignment: .leading) {
                List(recipes, id: \.id) { recipe in
                    VStack {
                        Text("\(recipe.name)")
                            .font(.headline)
                        Text("\(recipe.origin)")
                            .font(.subheadline)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(recipes: ContentPreviewHelper.mockRecipes())
    }
}

struct ContentPreviewHelper {
    static func mockRecipes() -> [RecipeModel] {
        var recipes = [RecipeModel]()
        
        recipes.append(RecipeModel(id: UUID(), name:"Italian Pizza", origin:"Italian"))
        
        return recipes
    }
}
