import SwiftUI

@main
struct SuiApp: App {
    
    @StateObject var screenModeManager = ScreenModeManager(screenMode: ScreenMode.fromString(UserDefaults.standard.string(forKey: ScreenMode.key) ?? ""))
    @StateObject var variousColorManager = VariousColorManager()
    
    var body: some Scene {
        WindowGroup {
            MainTestView()
                .environmentObject(screenModeManager)
                .environmentObject(variousColorManager)
                .onAppear {
                    screenModeManager.screenMode = ScreenMode.fromString(UserDefaults.standard.string(forKey: ScreenMode.key) ?? "")
                    variousColorManager.color = .generateColors(VariousColor.defaultValue)
                }
        }
    }
}
