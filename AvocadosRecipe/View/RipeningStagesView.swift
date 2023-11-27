//
//  RipeningStagesView.swift
//  AvocadosRecipe
//
//  Created by Lexter Tapawan on 21/11/2023.
//

import SwiftUI

struct RipeningStagesView: View {
    // MARK: - PROPERTIES
    
    var ripeningStages: [Ripening] = ripeningData
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { item in
                    RipeningView(ripening: item)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }
        .ignoresSafeArea(edges: .all)
    }
}

// MARK: - PREVIEW

#Preview {
    RipeningStagesView(ripeningStages: ripeningData)
}
