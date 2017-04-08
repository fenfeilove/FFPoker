//
//  AppDelegate.swift
//  PokerMainBoard
//
//  Created by francis on 4/6/17.
//  Copyright © 2017 fenfei. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        NSLog("applicationDidFinishLaunching")
        if !self.checkSystemVersion() {
            NSLog("the system version is too lower, show alert and exit")
            showAlert(message: "warning", detail: "your system version is too lower")
            exit(0)
        }
        else {
            NSLog("pass system version check")
        }
    }

    func checkSystemVersion() -> Bool {
        if NSAppKitVersionNumber < Double(NSAppKitVersionNumber10_10) {
            return false;
        }
        return true;
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
        NSLog("applicationWillTerminate");
    }
    
    func applicationWillBecomeActive(_ notification: Notification) {
        NSLog("applicationWillBecomeActive");
    }
    
    func applicationDidBecomeActive(_ notification: Notification) {
        NSLog("applicationDidBecomeActive");
    }
    
    func applicationWillResignActive(_ notification: Notification) {
        NSLog("applicationWillResignActive");
    }

    func applicationDidResignActive(_ notification: Notification) {
        NSLog("applicationDidResignActive");
    }
    
    func applicationShouldHandleReopen(_ sender: NSApplication, hasVisibleWindows flag: Bool) -> Bool {
        NSLog("applicationShouldHandleReopen");
        return true;
    }
    
    func showAlert(message: String, detail: String) {
        let alert:NSAlert = NSAlert()
        alert.messageText = message
        alert.informativeText = detail
        alert.alertStyle = NSAlertStyle.warning
        alert.addButton(withTitle: "OK");
        alert.runModal()
    }
}

