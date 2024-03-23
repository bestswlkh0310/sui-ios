//
//  VerticalDivider.swift
//  Sui
//
//  Created by dgsw8th71 on 3/6/24.
//

import SwiftUI

public struct VerticalDivider: View {
    
    public var thickness: DividerThickness
    
    public init(_ thickness: DividerThickness) {
        self.thickness = thickness
    }
    
    public var body: some View {
        Rectangle()
            .foregroundStyle(Color.divider)
            .frame(width: thickness.size, height: 30)
    }
}
