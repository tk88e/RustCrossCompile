//
//  sampleApp.swift
//

import SwiftUI

@main
struct Application: App {
    #if os(macOS)
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    #endif
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

#if os(macOS)
// Terminate the application when this application"s window is closed
class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
}
#endif
