//
//  RipeningView.swift
//  AvocadosRecipe
//
//  Created by Lexter Tapawan on 23/11/2023.
//

import SwiftUI

struct RipeningView: View {
    // MARK: - PROPERTIES
    
    var ripening: Ripening
    
    @State private var slidingAnimation: Bool = false
    
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            Image(ripening.image)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(Color("ColorGreenLight"))
                        .frame(width: 110, height: 110, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(Color("ColorAppearanceAdaptive"))
                        .frame(width: 120, height: 120, alignment: .center)
                )
                .zIndex(1)
                .animation(.easeInOut(duration: 1), value: slidingAnimation)
                .offset(y: slidingAnimation ? 55 : -55)
            
            VStack(alignment: .center, spacing: 10) {
                // STAGE
                VStack(alignment: .center, spacing: 0) {
                    Text(ripening.stage)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                    
                    Text("STAGE")
                        .font(.system(.body, design: .serif))
                        .fontWeight(.heavy)
                    
                }
                .foregroundStyle(Color("ColorGreenMedium"))
                .padding(.top, 65)
                .frame(width: 180)
                
                // TITLE
                Text(ripening.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(Color("ColorGreenMedium"))
                    .padding(.vertical, 12)
                    .padding(.horizontal, 0)
                    .frame(width: 220)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color("ColorGreenLight")]), startPoint: .top, endPoint: .bottom))
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                    )
                
                // DESCRIPTION
                Spacer()
                Text(ripening.description)
                    .foregroundStyle(Color("ColorGreenDark"))
                    .fontWeight(.bold)
                    .lineLimit(nil)
                Spacer()
                
                // RIPENESS
                Text(ripening.ripeness.uppercased())
                    .foregroundStyle(Color.white)
                    .font(.system(.callout, design: .serif))
                    .fontWeight(.bold)
                    .shadow(radius: 3)
                    .padding(.vertical)
                    .padding(.horizontal, 0)
                    .frame(width: 185)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenDark")]), startPoint: .top, endPoint: .bottom))
                            .shadow(color: Color("ColorBlackTransparent"), radius: 6, x: 0, y: 6)
                    )
                
                // INSTRUCTION
                Text(ripening.instruction)
                    .font(.footnote)
                    .foregroundStyle(Color("ColorGreenLight"))
                    .fontWeight(.bold)
                    .lineLimit(3)
                    .frame(width: 160)
                Spacer()
            } //: VSTACK
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 260, height: 485, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenLight"), Color("ColorGreenMedium")]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 20))
        } //: VSTACK
        .ignoresSafeArea(edges: .all)
        .onAppear(perform: {
            self.slidingAnimation.toggle()
        })
    }
}

#Preview {
    RipeningView(ripening: ripeningData[1])
}
