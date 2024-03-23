//
//  Color+.swift
//  Sui
//
//  Created by dgsw8th71 on 3/6/24.
//

import SwiftUI

extension Color {
    static let warningRed050 = Color(0xFFECEF)
    static let warningRed100 = Color(0xFFCED4)
    static let warningRed200 = Color(0xF99C9D)
    static let warningRed300 = Color(0xF37476)
    static let warningRed400 = Color(0xFF5252)
    static let warningRed500 = Color(0xFF3E36)
    static let warningRed600 = Color(0xF73536)
    static let warningRed700 = Color(0xE42930)
    static let warningRed800 = Color(0xD72028)
    static let warningRed900 = Color(0xC8111C)
    
    static let warningReds = [warningRed050,
                              warningRed100,
                              warningRed200,
                              warningRed300,
                              warningRed400,
                              warningRed500,
                              warningRed600,
                              warningRed700,
                              warningRed800,
                              warningRed900]
    
    static let white = Color(0xFFFFFF)
    static let black000 = Color(0x101112)
    static let black = Color(0x000000)
    
    static let whiteNBlacks = [white,
                               black000,
                               black]
    
    static let gray050 = Color(0xF8F9FA)
    static let gray100 = Color(0xF3F5F7)
    static let gray200 = Color(0xECEEF0)
    static let gray300 = Color(0xE2E5E8)
    static let gray400 = Color(0xD4D8DC)
    static let gray500 = Color(0xB5B9BD)
    static let gray600 = Color(0x8E9398)
    static let gray700 = Color(0x505458)
    static let gray800 = Color(0x3A3D40)
    static let gray900 = Color(0x252729)
    
    static let grays = [gray050,
                        gray100,
                        gray200,
                        gray300,
                        gray400,
                        gray500,
                        gray600,
                        gray700,
                        gray800,
                        gray900]
}

extension Color {
    // hex to color
    public init(_ hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}
