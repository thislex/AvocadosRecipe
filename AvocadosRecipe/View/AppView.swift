//
//  AppView.swift
//  AvocadosRecipe
//
//  Created by Lexter Tapawan on 21/11/2023.
//

import SwiftUI

struct AppView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem({
                    Image("tabicon-branch")
                    Text("Avocados")
                })
            ContentView()
                .tabItem({
                    Image("tabicon-book")
                    Text("Recipes")
                })
            RipeningStagesView()
                .tabItem({
                    Image("tabicon-avocado")
                    Text("Ripening")
                })
            SettingsView()
                .tabItem({
                    Image("tabicon-settings")
                    Text("Settings")
                })
        } //: TABVIEW
        .ignoresSafeArea(edges: .top)
    }
}

// MARK: - PREVIEW

#Preview {
    AppView()
}
