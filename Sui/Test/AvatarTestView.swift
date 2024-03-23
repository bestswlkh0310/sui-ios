//
//  AvatarTestView.swift
//  Sui
//
//  Created by dgsw8th71 on 3/7/24.
//

import SwiftUI

struct AvatarTestView: View {
    var body: some View {
        VStack {
            Avatar(
                image: Image("Pu"),
                size: .extraLarge
            )
            Avatar(
                image: Image("Pu"),
                size: .large
            )
            Avatar(
                image: Image("Pu"),
                size: .medium
            )
            Avatar(
                image: Image("Pu"),
                size: .small
            )
            Avatar(
                image: Image("Pu"),
                size: .extraSmall
            )
        }
        .navigationTitle("avatar")
        .applyBackground()
    }
}
