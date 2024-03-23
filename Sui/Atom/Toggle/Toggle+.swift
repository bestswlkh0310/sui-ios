//
//  Toggle.swift
//  Sui
//
//  Created by dgsw8th71 on 3/7/24.
//

import SwiftUI

extension Toggle {
    public func applyStyle(_ type: ToggleType = .default) -> some View {
        Group {
            switch type {
            case .default:
                self
                    .tint(.normalPrimary)
            case .checkbox(let size):
                self
                    .toggleStyle(Checkbox(color: .normalPrimary, size: size))
            }
        }
    }
}

struct Checkbox: ToggleStyle {
    
    var color: Color
    var size: ToggleSize
    
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            HStack {
                Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "checkmark.circle")
                    .resizable()
                    .frame(width: CGFloat(size.rawValue), height: CGFloat(size.rawValue))
                configuration.label
            }
        }
        .tint(configuration.isOn ? color : .color(light: .gray400, dark: .gray700))
    }
}
