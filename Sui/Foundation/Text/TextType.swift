import SwiftUI

public enum TextType: CaseIterable {
    case display1
    case display2
    
    case title1
    case title2
    case title3
    
    case subtitle1
    case subtitle2
    case subtitle3
    
    case body1
    
    case caption1
    case caption2
    
    public var size: CGFloat {
        switch self {
        case .display1: 40
        case .display2: 32
        case .title1: 28
        case .title2: 24
        case .title3: 20
        case .subtitle1: 20
        case .subtitle2: 16
        case .subtitle3: 14
        case .body1: 14
        case .caption1: 12
        case .caption2: 12
        }
    }
    
    public var fontWeight: Font.Weight {
        switch self {
        case .display1: .bold
        case .display2: .bold
        case .title1: .bold
        case .title2: .bold
        case .title3: .bold
        case .subtitle1: .semibold
        case .subtitle2: .semibold
        case .subtitle3: .semibold
        case .body1: .regular
        case .caption1: .semibold
        case .caption2: .regular
        }
    }
    
    public var lineSpacing: CGFloat {
        switch self {
        case .display1: 52
        case .display2: 41.6
        case .title1: 36.4
        case .title2: 31.2
        case .title3: 26
        case .subtitle1: 26
        case .subtitle2: 20.8
        case .subtitle3: 18.2
        case .body1: 21
        case .caption1: 15.6
        case .caption2: 15.6
        }
    }
}
