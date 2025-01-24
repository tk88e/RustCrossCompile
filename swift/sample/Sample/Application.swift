//
//  sampleApp.swift
//

import SwiftUI

@main
struct Application: App {
<<<<<<< HEAD
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

=======
    #if os(macOS)
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    #endif
    
>>>>>>> 8c4aba076fca9929bf29b6bdc1dd63b4059bfafc
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

<<<<<<< HEAD
=======
#if os(macOS)
>>>>>>> 8c4aba076fca9929bf29b6bdc1dd63b4059bfafc
// Terminate the application when this application"s window is closed
class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
}
<<<<<<< HEAD
=======
#endif
>>>>>>> 8c4aba076fca9929bf29b6bdc1dd63b4059bfafc
