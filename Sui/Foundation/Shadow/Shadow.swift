//
//  Shadow.swift
//  Sui
//
//  Created by dgsw8th71 on 3/6/24.
//

import SwiftUI

public enum ShadowType {
    case ev1, ev2, ev3, ev4
    
    public var y: CGFloat {
        switch self {
        case .ev1: 1
        case .ev2: 2
        case .ev3: 4
        case .ev4: 4
        }
    }
    
    public var radius: CGFloat {
        switch self {
        case .ev1: 2
        case .ev2: 6
        case .ev3: 12
        case .ev4: 20
        }
    }
    
    public var color: Color {
        switch self {
        case .ev1: .smallShadow
        case .ev2: .smallShadow
        case .ev3: .largeShadow
        case .ev4: .largeShadow
        }
    }
}

extension View {
    public func shadow(_ shadowType: ShadowType) -> some View {
        self
            .shadow(color: shadowType.color, 
                    radius: shadowType.radius,
                    y: shadowType.y)
    }
}
