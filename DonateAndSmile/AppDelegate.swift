//
//  AppDelegate.swift
//  DonateAndSmile
//
//  Created by Danny Guo on 11/9/18.
//  Copyright © 2018 Sublime Fund. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }
    
    func applicationShouldHandleReopen(_ sender: NSApplication,
                                       hasVisibleWindows flag: Bool) -> Bool {
        if let window = sender.windows.first {
            if flag {
                window.orderFront(nil)
            } else {
                window.makeKeyAndOrderFront(nil)
            }
        }

        return true
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
}
