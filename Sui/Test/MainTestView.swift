//
//  MainTestView.swift
//  Sui
//
//  Created by dgsw8th71 on 3/6/24.
//

import SwiftUI

struct MainTestView: View {
    
    @EnvironmentObject var screenModeManager: ScreenModeManager
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.background.ignoresSafeArea()
                VStack {
                    Picker("screen mode", selection: $screenModeManager.screenMode) {
                        ForEach(ScreenMode.allCases, id: \.self) {
                            Text($0.rawValue)
                        }
                    }
                    .pickerStyle(.segmented)
                    .padding()
                    List {
                        NavigationLink("Text") {
                            TextTestView()
                        }
                        NavigationLink("Basic Colors") {
                            ColorTestView()
                        }
                        NavigationLink("Shadow") {
                            ShadowTestView()
                        }
                        NavigationLink("Divider") {
                            DividerTestView()
                        }
                        NavigationLink("Avatar") {
                            AvatarTestView()
                        }
                        NavigationLink("Button") {
                            ButtonTestView()
                        }
                        NavigationLink("Toggle") {
                            ToggleTestView()
                        }
                        NavigationLink("TextField") {
                            TextFieldTestView()
                        }
                    }
                    .scrollContentBackground(.hidden)
                    .navigationTitle("Test")
                }
            }
        }
    }
}
