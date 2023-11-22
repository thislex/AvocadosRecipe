//
//  FactModel.swift
//  AvocadosRecipe
//
//  Created by Lexter Tapawan on 22/11/2023.
//

import SwiftUI

// MARK: - FACT MODEL

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
