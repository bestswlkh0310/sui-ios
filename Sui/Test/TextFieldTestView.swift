//
//  TextFieldTestView.swift
//  Sui
//
//  Created by dgsw8th71 on 3/7/24.
//

import SwiftUI

struct TextFieldTestView: View {
    var body: some View {
        ScrollView {
            VStack {
                BaseTextField(
                    fieldText: "hello world",
                    placeholder: "hello world",
                    helperText: "helper",
                    leading: { Text("le") },
                    text: .constant(""),
                    trailing: { Text("tr") }
                ).padding()
                BaseTextField(
                    fieldText: "hello world",
                    placeholder: "hello world",
                    helperText: "helper",
                    leading: { Text("le") },
                    text: .constant(""),
                    trailing: { Text("tr") },
                    isDisabled: true
                ).padding()
                BaseTextField(
                    fieldText: "hello world",
                    placeholder: "hello world",
                    helperText: "helper",
                    leading: { Text("le") },
                    text: .constant(""),
                    trailing: { Text("tr") },
                    isNegative: true
                ).padding()
                BaseTextField(
                    fieldText: "hello world",
                    placeholder: "hello world",
                    helperText: "helper",
                    leading: { Text("le") },
                    text: .constant(""),
                    trailing: { Text("tr") },
                    isPositive: true
                ).padding()
                
                SuffixTextField(
                    fieldText: "hello world",
                    placeholder: "hello world",
                    helperText: "helper",
                    text: .constant(""),
                    suffixText: "@dgsw.hs.kr"
                ).padding()
                SuffixTextField(
                    fieldText: "hello world",
                    placeholder: "hello world",
                    helperText: "helper",
                    text: .constant(""),
                    suffixText: "@dgsw.hs.kr",
                    isDisabled: true
                ).padding()
                SuffixTextField(
                    fieldText: "hello world",
                    placeholder: "hello world",
                    helperText: "helper",
                    text: .constant(""),
                    suffixText: "@dgsw.hs.kr",
                    isNegative: true
                ).padding()
                SuffixTextField(
                    fieldText: "hello world",
                    placeholder: "hello world",
                    helperText: "helper",
                    text: .constant(""),
                    suffixText: "@dgsw.hs.kr",
                    isPositive: true
                ).padding()
                
                SimpleTextField(text: .constant("")).padding()
                SimpleTextField(text: .constant(""), isDisabled: true).padding()
                SimpleTextField(text: .constant(""), isNegative: true).padding()
                SimpleTextField(text: .constant(""), isPositive: true).padding()
                
                SearchTextField(
                    placeholder: "검색ㄱㄱ",
                    text: .constant("")
                )
                .padding()
                SearchTextField(
                    placeholder: "검색 ㄱㄱ",
                    text: .constant(""),
                    isDisabled: true
                )
                .padding()
                
                PasswordTextField(
                    placeholder: "비밀번호 ㄱㄱ", 
                    text: .constant("")
                )
                .padding()
                PasswordTextField(
                    placeholder: "비밀번호 ㄱㄱ",
                    text: .constant(""),
                    isDisabled: true
                )
                .padding()
                PasswordTextField(
                    placeholder: "비밀번호 ㄱㄱ",
                    text: .constant(""),
                    isNegative: true
                )
                .padding()
                PasswordTextField(
                    placeholder: "비밀번호 ㄱㄱ",
                    text: .constant(""),
                    isPositive: true
                )
                .padding()
            }
        }
    }
}
