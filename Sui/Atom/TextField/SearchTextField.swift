//
//  SearchTextField.swift
//  Sui
//
//  Created by dgsw8th71 on 3/8/24.
//

import SwiftUI

public struct SearchTextField: View, TextFieldProtocol {
    let isNegative: Bool = false
    let isPositive: Bool = false
    let fieldText: String? = nil
    let helperText: String? = nil
    @Binding var text: String
    let placeholder: String?
    let isDisabled: Bool
    let onSubmit: () -> Void
    
    public init(
        placeholder: String? = nil,
        text: Binding<String>,
        isDisabled: Bool = false,
        onSubmit: @escaping () -> Void = {}
    ) {
        self.placeholder = placeholder
        self._text = text
        self.isDisabled = isDisabled
        self.onSubmit = onSubmit
    }
    
    public var body: some View {
        BaseTextField(
            placeholder: placeholder,
            leading: {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.textTertiary)
            },
            text: $text,
            trailing: {
                AnyView(
                    Group {
                        if !text.isEmpty {
                            Button(action: {
                                text = ""
                            }, label: {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundColor(.secondary)
                            })
                        }
                    }
                )
            },
            isDisabled: isDisabled,
            onSubmit: onSubmit
        )
    }
}
