//
//  Button.swift
//  Sui
//
//  Created by dgsw8th71 on 3/7/24.
//

import SwiftUI

struct FilledButton: View {
    
    var text: String
    var leftIcon: String?
    var rightIcon: String?
    var buttonType: ButtonType.filled
    var isLoading: Bool
    var onClick: () -> Void
    
    init(_ text: String, leftIcon: String? = nil, rightIcon: String? = nil, buttonType: ButtonType.filled = .normal, isLoading: Bool = false, onClick: @escaping () -> Void) {
        self.text = text
        self.leftIcon = leftIcon
        self.rightIcon = rightIcon
        self.buttonType = buttonType
        self.isLoading = isLoading
        self.onClick = onClick
    }
    
    var body: some View {
        Button {
            onClick()
        } label: {
            Text(isLoading ? "" : text)
                .foregroundStyle(buttonType.buttonStyle.foreground)
                .frame(maxWidth: .infinity)
                .frame(height: 54)
                .background(buttonType.buttonStyle.background)
                .clipShape(RoundedCorner(radius: 8))
                .overlay {
                    if isLoading {
                        ProgressView()
                    }
                }
        }
    }
}
