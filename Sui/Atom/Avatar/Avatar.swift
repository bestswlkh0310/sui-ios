//
//  Profile.swift
//  Sui
//
//  Created by dgsw8th71 on 3/8/24.
//

import SwiftUI

private struct AvatarResizer: Shape {
    var insetRatio: CGFloat
    var width: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let radius = width / 2
        let inset = radius * insetRatio
        
        let topPoint = CGPoint(x: radius, y: 0)
        let rightPoint = CGPoint(x: radius * 2, y: radius)
        let bottomPoint = CGPoint(x: radius, y: radius * 2)
        let leftPoint = CGPoint(x: 0, y: radius)
        
        var path = Path()
        path.move(to: topPoint)
        path.addCurve(
            to: rightPoint,
            control1: CGPoint(x: radius * 2 - inset, y: 0),
            control2: CGPoint(x: radius * 2, y: inset)
        )
        path.addCurve(
            to: bottomPoint,
            control1: CGPoint(x: radius * 2, y: radius * 2 - inset),
            control2: CGPoint(x: radius * 2 - inset, y: radius * 2)
        )
        path.addCurve(
            to: leftPoint,
            control1: CGPoint(x: inset, y: radius * 2),
            control2: CGPoint(x: 0, y: radius * 2 - inset)
        )
        path.addCurve(
            to: topPoint,
            control1: CGPoint(x: 0, y: inset),
            control2: CGPoint(x: inset, y: 0)
        )
        
        return path
    }
}

public struct Avatar: View {
    public enum AvatarSize {
        case extraSmall
        case small
        case medium
        case large
        case extraLarge
        case custom(CGFloat)
        
        fileprivate var size: CGFloat {
            switch self {
            case .extraSmall: return 24
            case .small: return 32
            case .medium: return 48
            case .large: return 72
            case .extraLarge: return 96
            case let .custom(value): return value
            }
        }
    }
    
    public enum AvatarContentMode {
        case fit
        case fill
    }
    
    private let image: Image?
    private let size: AvatarSize
    private var color = Color.avatarStroke
    private var width: CGFloat = 2
    private let contentMode: AvatarContentMode
    
    public init(image: Image, 
                size: AvatarSize = .small,
                contentMode: AvatarContentMode = .fill) {
        self.image = image
        self.size = size
        self.contentMode = contentMode
    }
    
    public func border(color: Color, width: CGFloat) -> Avatar {
        var view = self
        view.color = color
        view.width = width
        return view
    }
    
    public var body: some View {
        if let image = image {
            image
                .resizable()
                .aspectRatio(contentMode: contentMode == .fit ? .fit : .fill)
                .frame(width: size.size, height: size.size)
                .clipShape(AvatarResizer(insetRatio: 0.2, width: size.size))
                .overlay(AvatarResizer(insetRatio: 0.2, width: size.size)
                    .stroke(color, lineWidth: width))
        }
    }
}
