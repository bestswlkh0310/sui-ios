//
//  ToggleTestView.swift
//  Sui
//
//  Created by dgsw8th71 on 3/7/24.
//

import SwiftUI

struct ToggleTestView: View {
    
    @State var isOn = false
    @State var isCheckboxOn = false
    
    var body: some View {
        VStack(spacing: 16) {
            Toggle("", isOn: $isOn)
                .applyStyle()
                .labelsHidden()
            ForEach(ToggleSize.allCases, id: \.self) {
                Toggle("", isOn: $isCheckboxOn)
                    .applyStyle(.checkbox(size: $0))
                    .labelsHidden()
            }
        }
        .navigationTitle("toggle")
        .applyBackground()
    }
}
