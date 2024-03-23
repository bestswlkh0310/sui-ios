//
//  SimpleTextField.swift
//  Sui
//
//  Created by dgsw8th71 on 3/8/24.
//

import SwiftUI

public struct SimpleTextField: View, TextFieldProtocol {
    let fieldText: String?
    let placeholder: String?
    let helperText: String?
    @Binding var text: String
    let isDisabled: Bool
    let isNegative: Bool
    let isPositive: Bool
    let onSubmit: () -> Void

    public init(
        fieldText: String? = nil,
        placeholder: String? = nil,
        helperText: String? = nil,
        text: Binding<String>,
        isDisabled: Bool = false,
        isNegative: Bool = false,
        isPositive: Bool = false,
        onSubmit: @escaping () -> Void = {}
    ) {
        self.fieldText = fieldText
        self.placeholder = placeholder
        self.helperText = helperText
        self._text = text
        self.isDisabled = isDisabled
        self.isNegative = isNegative
        self.isPositive = isPositive
        self.onSubmit = onSubmit
    }
    
    public var body: some View {
        BaseTextField(
            fieldText: fieldText,
            placeholder: placeholder,
            helperText: helperText,
            text: $text,
            trailing:{
                AnyView(
                    Group {
                    if !text.isEmpty {
                        Button {
                            text = ""
                        } label: {
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.secondary)
                        }
                    } else {
                        EmptyView()
                    }
                }
            )},
            isDisabled: isDisabled,
            isNegative: isNegative,
            isPositive: isPositive,
            onSubmit: onSubmit
         )
    }
}
