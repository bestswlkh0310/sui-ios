//
//  VariousColorManager.swift
//  Sui
//
//  Created by dgsw8th71 on 3/7/24.
//

import Foundation
import Then
import SwiftUI

final class VariousColorManager: ObservableObject {
    @Published var variousValue = VariousColor.defaultValue {
        didSet {
            color = .generateColors(variousValue)
        }
    }
    @Published var color: VariousColor = .generateColors(VariousColor.defaultValue) {
        didSet {
            Color.normalPrimary = Color.color(light: color.point500)
            Color.normalSecondary = Color.color(light: color.point100, dark: color.point800)
            Color.normalForeground = Color.color(light: color.point050)
            
            Color.disabledPrimary = Color.color(light: .gray200)
            Color.disabledSecondary = Color.color(light: .gray200, dark: .gray800)
            Color.disabledForeground = Color.color(light: .gray500)
            
            Color.warnedPrimary = Color.color(light: .warningRed400)
            Color.warnedSecondary = Color.color(light: .warningRed050, dark: .warningRed900)
            Color.warnedForeground = Color.color(light: .white)
        }
    }
}
