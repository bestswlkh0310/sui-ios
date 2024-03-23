//
//  ShadowTestView.swift
//  Sui
//
//  Created by dgsw8th71 on 3/6/24.
//

import SwiftUI

struct ShadowTestView: View {
    var body: some View {
        VStack(spacing: 32) {
            HStack(spacing: 32) {
                Rectangle()
                    .foregroundColor(.background)
                    .frame(width: 100, height: 100)
                    .cornerRadius(8)
                    .shadow(.ev1)
                Rectangle()
                    .foregroundColor(.background)
                    .frame(width: 100, height: 100)
                    .cornerRadius(8)
                    .shadow(.ev2)
            }
            HStack(spacing: 32) {
                Rectangle()
                    .foregroundColor(.background)
                    .frame(width: 100, height: 100)
                    .cornerRadius(8)
                    .shadow(.ev3)
                Rectangle()
                    .foregroundColor(.background)
                    .frame(width: 100, height: 100)
                    .cornerRadius(8)
                    .shadow(.ev4)
            }
        }
        .navigationTitle("shadow")
        .applyBackground()
    }
}
