//
//  ToggleType.swift
//  Sui
//
//  Created by dgsw8th71 on 3/7/24.
//

import SwiftUI

public enum ToggleType {
    case `default`
    case checkbox(size: ToggleSize)
}

public enum ToggleSize: Int, CaseIterable {
    case small = 16
    case medium = 20
    case large = 24
}
