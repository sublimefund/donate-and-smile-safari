//
//  SafariExtensionViewController.swift
//  DonateAndSmile Extension
//
//  Created by Danny Guo on 11/9/18.
//  Copyright © 2018 Sublime Fund. All rights reserved.
//

import SafariServices

class SafariExtensionViewController: SFSafariExtensionViewController {
    
    static let shared: SafariExtensionViewController = {
        let shared = SafariExtensionViewController()
        shared.preferredContentSize = NSSize(width:320, height:240)
        return shared
    }()

}
