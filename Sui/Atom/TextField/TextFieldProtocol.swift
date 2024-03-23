//
//  TextFieldProtocol.swift
//  Sui
//
//  Created by dgsw8th71 on 3/8/24.
//

import Foundation

protocol TextFieldProtocol {
    var placeholder: String? { get }
    var helperText: String? { get }
    var fieldText: String? { get }
    var text: String { get }
    /// 우선순위는 isDisabled > isNegative > isPositive
    var isDisabled: Bool { get }
    var isNegative: Bool { get }
    var isPositive: Bool { get }
}
