//
//  RecipeRatingView.swift
//  AvocadosRecipe
//
//  Created by Lexter Tapawan on 23/11/2023.
//

import SwiftUI

struct RecipeRatingView: View {
    // MARK: - PROPERTIES
    
    var recipe: Recipe
    
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...(recipe.rating), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                .foregroundStyle(Color.yellow)
            } //: LOOP
        } //: HSTACK
    }
}

#Preview {
    RecipeRatingView(recipe: recipesData[0])
}
