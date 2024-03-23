import SwiftUI

extension Text {
    public func font(_ textType: TextType) -> some View {
        self
            .fontWeight(textType.fontWeight)
            .font(.system(size: textType.size))
            .lineSpacing(textType.lineSpacing)
    }
}
