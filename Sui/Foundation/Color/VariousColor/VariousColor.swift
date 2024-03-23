//
//  VariousColor.swift
//  Sui
//
//  Created by dgsw8th71 on 3/6/24.
//

import SwiftUI

public struct VariousColor {
    public static let defaultValue = 0.55
    public var point050: Color
    public var point100: Color
    public var point200: Color
    public var point300: Color
    public var point400: Color
    public var point500: Color
    public var point600: Color
    public var point700: Color
    public var point800: Color
    public var point900: Color
    
    public static func generateColors(_ num: Double) -> VariousColor {
        VariousColor(point050: Color(hue: num, saturation: 0.1, brightness: 1),
                     point100: Color(hue: num, saturation: 0.3, brightness: 1),
                     point200: Color(hue: num, saturation: 0.45, brightness: 0.95),
                     point300: Color(hue: num, saturation: 0.65, brightness: 0.95),
                     point400: Color(hue: num, saturation: 0.85, brightness: 0.9),
                     point500: Color(hue: num, saturation: 1, brightness: 0.9),
                     point600: Color(hue: num, saturation: 1, brightness: 0.8),
                     point700: Color(hue: num, saturation: 1, brightness: 0.7),
                     point800: Color(hue: num, saturation: 1, brightness: 0.6),
                     point900: Color(hue: num, saturation: 1, brightness: 0.5))
    }
    
    public var points: [Color] {
        [point050,
         point100,
         point200,
         point300,
         point400,
         point500,
         point600,
         point700,
         point800,
         point900]
    }
}
