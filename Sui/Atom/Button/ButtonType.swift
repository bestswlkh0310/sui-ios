//
//  Button.swift
//  Sui
//
//  Created by dgsw8th71 on 3/7/24.
//

import SwiftUI
import Then

public enum ButtonType {
    
    public static var primaryColor: Color = .clear
    
    enum filled {
        case normal
        case disabled
        case warned
        
        var buttonStyle: ButtonStyle {
            switch self {
            case .normal: .init(background: .normalPrimary,
                                foreground: .normalForeground)
            case .disabled: .init(background: .disabledPrimary,
                                  foreground: .disabledForeground)
            case .warned: .init(background: .warnedPrimary,
                                foreground: .warnedForeground)
            }
        }
    }
    enum tinted {
        case normal
        case disabled
        case warned
        
        var buttonStyle: ButtonStyle {
            switch self {
            case .normal: .init(background: .normalSecondary,
                                foreground: .normalPrimary)
            case .disabled: .init(background: .disabledSecondary,
                                  foreground: .disabledForeground)
            case .warned: .init(background: .warnedSecondary,
                                foreground: .warnedPrimary)
            }
        }
    }
    enum line {
        case normal
        case disabled
        case warned
        
        var buttonStyle: ButtonStyle {
            switch self {
            case .normal: .init(background: .white,
                                foreground: .normalPrimary)
            case .disabled: .init(background: .white,
                                  foreground: .disabledForeground)
            case .warned: .init(background: .white,
                                foreground: .warnedPrimary)
            }
        }
    }
}

struct ButtonStyle {
    
    var background: Color
    var foreground: Color
}

extension ButtonStyle: Then {}
