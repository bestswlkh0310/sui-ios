//
//  DividerTypw.swift
//  Sui
//
//  Created by dgsw8th71 on 3/6/24.
//

import SwiftUI

public enum DividerThickness {
    case small
    case large
    
    var size: CGFloat {
        switch self {
        case .small: 1
        case .large: 8
        }
    }
}
