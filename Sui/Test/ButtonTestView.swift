//
//  ButtonTestView.swift
//  Sui
//
//  Created by dgsw8th71 on 3/7/24.
//

import SwiftUI

struct ButtonTestView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("filled button")
                    .font(.subtitle1)
                    .toLeading()
                FilledButton("하이") {  }
                FilledButton("하이", buttonType: .disabled) {  }
                FilledButton("하이", buttonType: .warned) {  }
                FilledButton("하이", isLoading: true) {  }
                
                Text("tinted button")
                    .font(.subtitle1)
                    .toLeading()
                TintedButton("하이", buttonType: .normal) {  }
                TintedButton("하이", buttonType: .disabled) {  }
                TintedButton("하이", buttonType: .warned) {  }
                TintedButton("하이", isLoading: true) {  }
                
                Text("line button")
                    .font(.subtitle1)
                    .toLeading()
                LineButton("하이", buttonType: .normal) {  }
                LineButton("하이", buttonType: .disabled) {  }
                LineButton("하이", buttonType: .warned) {  }
                LineButton("하이", isLoading: true) {  }
            }
            .padding(.horizontal, 20)
        }
        .navigationTitle("button")
        .applyBackground()
    }
}
