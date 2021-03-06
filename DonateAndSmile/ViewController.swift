//
//  ViewController.swift
//  DonateAndSmile
//
//  Created by Danny Guo on 11/9/18.
//  Copyright © 2018 Sublime Fund. All rights reserved.
//

import Cocoa
import SafariServices.SFSafariApplication

class ViewController: NSViewController {

    @IBOutlet var appNameLabel: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.appNameLabel.stringValue = "To use Donate and Smile, enable it in Safari Extensions Preferences."
    }
    
    @IBAction func openSafariExtensionPreferences(_ sender: AnyObject?) {
        SFSafariApplication.showPreferencesForExtension(withIdentifier: "org.sublimefund.DonateAndSmile.safari") { error in
            if let _ = error {
                // Insert code to inform the user that something went wrong.

            }
        }
    }

}
