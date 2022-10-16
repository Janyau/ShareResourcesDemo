//
//  ViewController.swift
//  DestinationApp
//
//  Created by yaojian on 2022/10/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sourceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        NotificationCenter.default.addObserver(self, selector: #selector(message(noti:)), name: shareDataWithinAppsNotification, object: nil)
    }

    @objc func message(noti: Notification) {
        if let url = noti.object as? String {
            sourceLabel.text = url
        }
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}

