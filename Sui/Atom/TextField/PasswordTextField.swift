//
//  PasswordTextField.swift
//  Sui
//
//  Created by dgsw8th71 on 3/8/24.
//

import SwiftUI

public struct PasswordTextField: View, TextFieldProtocol {
    let fieldText: String?
    let placeholder: String?
    let helperText: String?
    @Binding var text: String
    let suffixText: String?
    let isDisabled: Bool
    let isNegative: Bool
    let isPositive: Bool
    let onSubmit: () -> Void
    
    @State var isSecured: Bool = true
    
    public init(
        fieldText: String? = nil,
        placeholder: String? = nil,
        helperText: String? = nil,
        text: Binding<String>,
        suffixText: String? = nil,
        isDisabled: Bool = false,
        isNegative: Bool = false,
        isPositive: Bool = false,
        onSubmit: @escaping () -> Void = {}
    ) {
        self.fieldText = fieldText
        self.placeholder = placeholder
        self.helperText = helperText
        self._text = text
        self.suffixText = suffixText
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
            trailing: {
                Button(action: {
                    isSecured.toggle()
                }) {
                    Image(systemName: self.isSecured ? "eye.slash" : "eye")
                        .accentColor(.helper)
                        .frame(width: 24, height: 24)
                }
            },
            isDisabled: isDisabled,
            isNegative: isNegative,
            isPositive: isPositive,
            isSecure: isSecured,
            onSubmit: onSubmit
        )
    }
}
