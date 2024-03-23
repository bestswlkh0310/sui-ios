//
//  ScreenMode.swift
//  Sui
//
//  Created by dgsw8th71 on 3/7/24.
//

import UIKit

enum ScreenMode: String, CaseIterable {
    case light = "light"
    case dark = "night"
    case system = "system"
    
    public static let key = "screenMode"
    
    public static func fromString(_ str: String) -> ScreenMode {
        for m in ScreenMode.allCases {
            if m.rawValue == str {
                return m
            }
        }
        return .system
    }
}
