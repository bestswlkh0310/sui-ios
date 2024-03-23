//
//  TextField.swift
//  Sui
//
//  Created by dgsw8th71 on 3/7/24.
//

import SwiftUI

struct BaseTextField<Leading: View, Trailing: View>: View {
    private let fieldText: String?
    private let placeholder: String?
    private let helperText: String?
    @Binding private var text: String
    private let isDisabled: Bool
    private let isNegative: Bool
    private let isPositive: Bool
    
    @ViewBuilder var leading: () -> Leading?
    @ViewBuilder var trailing: () -> Trailing?
    
    private var fieldTextColor: Color
    private var borderColor: Color
    private var helperTextColor: Color
    private var textColor: Color
    private let isSecure: Bool
    private let onSubmit: () -> Void
    
    init(
        fieldText: String? = nil,
        placeholder: String? = nil,
        helperText: String? = nil,
        @ViewBuilder leading: @escaping () -> Leading? = { EmptyView() },
        text: Binding<String>,
        @ViewBuilder trailing: @escaping () -> Trailing? = { EmptyView() },
        isDisabled: Bool = false,
        isNegative: Bool = false,
        isPositive: Bool = false,
        borderColor: Color = .clear,
        isSecure: Bool = false,
        onSubmit: @escaping () -> Void = {}
    ) {
        self.fieldText = fieldText
        self.placeholder = placeholder
        self.helperText = helperText
        self.leading = leading
        self._text = text
        self.trailing = trailing
        self.isDisabled = isDisabled
        self.isNegative = isNegative
        self.isPositive = isPositive
        
        self.fieldTextColor = .textField
        self.borderColor = borderColor
        self.helperTextColor = .helper
        
        self.isSecure = isSecure
        self.textColor = .text
        
        self.onSubmit = onSubmit
        
        /// isDisabled > isNegative > isPositive
        if isDisabled {
            self.fieldTextColor = .disabledText
            self.borderColor = .clear
            self.helperTextColor = .disabledText
            self.textColor = .disabledText
            return
        }
        
        if isNegative {
            self.fieldTextColor = .text
            self.borderColor = .warnedHelper
            self.helperTextColor = .warnedHelper
            return
        }
        
        if isPositive {
            self.fieldTextColor = .text
            self.borderColor = .normalPrimary
            self.helperTextColor = .helper
            return
        }
    }
    
    public var body: some View {
        VStack(alignment: .leading) {
            if let fieldText {
                Text(fieldText)
                    .foregroundStyle(fieldTextColor)
            }
            
            HStack {
                leading()
                
                if isSecure {
                    SecureField(placeholder ?? "", text: $text)
                        .accentColor(.normalPrimary)
                        .foregroundColor(textColor)
                        .disabled(isDisabled)
                } else {
                    TextField(placeholder ?? "", text: $text)
                        .accentColor(.normalPrimary)
                        .foregroundColor(textColor)
                        .disabled(isDisabled)
                        .onSubmit {
                            onSubmit()
                        }
                }
                trailing()
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.textFieldBG)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(borderColor, lineWidth: 1)
            )
            
            if let helperText {
                Text(helperText)
                .foregroundStyle(helperTextColor)
                .padding(.horizontal, 8)
            }
        }
    }
}
