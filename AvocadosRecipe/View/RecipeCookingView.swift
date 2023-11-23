//
//  RecipeCookingView.swift
//  AvocadosRecipe
//
//  Created by Lexter Tapawan on 23/11/2023.
//

import SwiftUI

struct RecipeCookingView: View {
    // MARK: - PROPERTIES
    
    var recipe: Recipe
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 12) {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            } //: HSTACK
            HStack(alignment: .center, spacing: 12) {
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            }
            HStack(alignment: .center, spacing: 12) {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            }
        } //: HSTACK
        .font(.footnote)
        .foregroundStyle(Color.gray)
    }
}

#Preview {
    RecipeCookingView(recipe: recipesData[0])
}
