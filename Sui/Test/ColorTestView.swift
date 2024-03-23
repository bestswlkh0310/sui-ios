//
//  ColorTestView.swift
//  Sui
//
//  Created by dgsw8th71 on 3/6/24.
//

import SwiftUI

struct ColorTestView: View {
    
    @EnvironmentObject var variousColorManager: VariousColorManager
    
    var body: some View {
        ScrollView {
            VStack {
                Text("warningRed")
                    .font(.subtitle1)
                    .toLeading()
                ColorContainer(colors: Color.warningReds)
                
                Text("white & black")
                    .font(.subtitle1)
                    .toLeading()
                    .padding(.top, 32)
                ColorContainer(colors: Color.whiteNBlacks)
                    .overlay {
                        RoundedCorner(radius: ColorContainer.defaultCornerRadius)
                            .stroke(.gray, lineWidth: 1)
                    }
                
                Text("gray")
                    .font(.subtitle1)
                    .toLeading()
                    .padding(.top, 32)
                ColorContainer(colors: Color.grays)
                
                Text("various")
                    .font(.subtitle1)
                    .toLeading()
                    .padding(.top, 32)
                ColorContainer(colors: variousColorManager.color.points)
                Slider(value: $variousColorManager.variousValue)
            }
            .padding(.horizontal, 32)
        }
        .navigationTitle("Color")
        .applyBackground()
    }
}

private struct ColorContainer: View {
    
    static let defaultHeight: CGFloat = 64
    static let defaultCornerRadius: CGFloat = 8
    var colors: [Color]
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(colors, id: \.self) {
                $0
            }
        }
        .cornerRadius(ColorContainer.defaultCornerRadius)
        .frame(maxWidth: .infinity)
        .frame(height: ColorContainer.defaultHeight)
    }
}
