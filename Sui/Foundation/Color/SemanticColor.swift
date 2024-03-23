//
//  SemanticColor.swift
//  Sui
//
//  Created by dgsw8th71 on 3/6/24.
//

import SwiftUI

extension Color {
    public static func color(light: Color, dark: Color? = nil) -> Color {
        if let dark = dark {
            return Color(uiColor: UIColor { $0.userInterfaceStyle == .dark ? UIColor(dark) : UIColor(light) })
        } else {
            return light
        }
    }
    
    // MARK: - foundation
    // global
    public static var background = color(light: .white, dark: .black000)
    
    // shadow
    public static var smallShadow = color(light: .gray400, dark: .gray900)
    public static var largeShadow = color(light: .gray500, dark: .gray900)
    
    // MARK: - atom
    // avatar
    public static var avatarStroke = color(light: .gray100, dark: .gray800)
    
    // divider
    public static var divider = color(light: .gray100, dark: .gray900)
    
    // points
    public static var normalPrimary = Color.clear
    public static var normalForeground = Color.clear
    public static var normalSecondary = Color.clear
    
    public static var disabledPrimary = Color.clear
    public static var disabledForeground = Color.clear
    public static var disabledSecondary = Color.clear
    
    public static var warnedPrimary = Color.clear
    public static var warnedForeground = Color.clear
    public static var warnedSecondary = Color.clear
    
    // text
    public static var text = color(light: .black000, dark: white)
    public static var textSecondary = color(light: .gray800, dark: .gray200)
    public static var textTertiary = color(light: .gray600, dark: .gray400)
    public static var grayText = color(light: .gray400, dark: .gray600)
    public static var disabledText = color(light: .gray500, dark: .gray400)
    
    // text field
    public static var textField = color(light: .black000, dark: .white)
    public static var textFieldBG = color(light: .gray100, dark: .gray900)
    public static var warnedHelper = color(light: .warningRed500)
    public static var helper = color(light: .gray500)
}
