//
//  ScreenModeManager.swift
//  Sui
//
//  Created by dgsw8th71 on 3/7/24.
//

import UIKit

class ScreenModeManager: ObservableObject {
    @Published var screenMode: ScreenMode {
        didSet {
            UserDefaults.standard.set(screenMode.rawValue, forKey: ScreenMode.key)
            updateTheme()
        }
    }
    
    init(screenMode: ScreenMode) {
        self.screenMode = screenMode
    }
    
    private func updateTheme() {
        let window = UIApplication.findWindow()
        switch screenMode {
        case .light:
            window?.overrideUserInterfaceStyle = .light
        case .dark:
            window?.overrideUserInterfaceStyle = .dark
        case .system:
            window?.overrideUserInterfaceStyle = .unspecified
        }
    }
}
