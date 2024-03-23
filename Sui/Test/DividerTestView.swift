//
//  DividerTestView.swift
//  Sui
//
//  Created by dgsw8th71 on 3/6/24.
//

import SwiftUI

struct DividerTestView: View {
    var body: some View {
        VStack(spacing: 32) {
            HorizontalDivider(.large)
            HorizontalDivider(.small)
            VerticalDivider(.large)
            VerticalDivider(.small)
        }
        .navigationTitle("divider")
        .applyBackground()
    }
}


