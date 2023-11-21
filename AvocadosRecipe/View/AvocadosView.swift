//
//  AvocadosView.swift
//  AvocadosRecipe
//
//  Created by Lexter Tapawan on 21/11/2023.
//

import SwiftUI

struct AvocadosView: View {
    // MARK: - PROPERTIES
    
    @State private var pulseAnimation: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                .scaleEffect(self.pulseAnimation ? 1 : 0.9)
                .opacity(self.pulseAnimation ? 1 : 0.9)
                .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
            
            VStack {
                Text("Avocados".uppercased())
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundStyle(Color.white)
                    .padding()
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                Text("""
Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
""")
                .lineLimit(nil)
                .font(.system(.headline, design: .serif))
                .foregroundStyle((Color("ColorGreenLight")))
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .frame(maxWidth: 640, minHeight: 120)
            } //: VSTACK
            .padding()
            
            Spacer()
        } //: VSTACK
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .ignoresSafeArea(edges: .all)
        .onAppear(perform: {
            self.pulseAnimation.toggle()
        })
    }
}

// MARK: - PREVIEW

#Preview {
    AvocadosView()
}
