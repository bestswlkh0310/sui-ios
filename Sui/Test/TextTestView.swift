//
//  TextTestView.swift
//  Sui
//
//  Created by dgsw8th71 on 3/6/24.
//

import SwiftUI

struct TextTestView: View {
    var body: some View {
        VStack {
            ForEach(TextType.allCases, id:\.self) {
                Text("um jun sik")
                    .font($0)
            }
        }
        .navigationTitle("Text")
        .applyBackground()
    }
}
