//
//  WebViewController.swift
//  Simple IOS
//
//  Created by Chris Withers on 6/23/20.
//  Copyright © 2020 Chris Withers. All rights reserved.
//

import UIKit
import SafariServices
class WebViewController: UIViewController {
    
    var link: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        let vc = SFSafariViewController(url: URL(string: link!)!)
        present(vc, animated: true)
    }
    

}
