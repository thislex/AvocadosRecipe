//
//  FactsView.swift
//  AvocadosRecipe
//
//  Created by Lexter Tapawan on 22/11/2023.
//

import SwiftUI

struct FactsView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            Text("Avocado trees contain enzymes that prevent the fruit from ever ripening on the tree, allowing farmers to use the trees as storage devices for up to 7 months after they reach maturity.")
                .padding(.leading, 55)
                .padding(.trailing, 10)
                .padding(.vertical, 3)
                .frame(width: 300, height: 135, alignment: .center)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .leading, endPoint: .trailing)
                )
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .font(.footnote)
            .foregroundStyle(Color.white)
            
            Image("avocado-fact-2")
                .resizable()
                .frame(width: 66, height: 66, alignment: .center)
                .clipShape(Circle())
                .background(
                Circle()
                    .fill(Color.white)
                    .frame(width: 74, height: 74, alignment: .center)
                )
                .background(
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .trailing, endPoint: .leading))
                    .frame(width: 82, height: 82, alignment: .center)
                )
                .offset(x: -150)
        } //: ZSTACK
    }
}

// MARK: - PREVIEW

#Preview {
    FactsView()
}
