//
//  ViewController.swift
//  SourceApp
//
//  Created by yaojian on 2022/10/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func jumpToOtherApp(_ sender: Any) {
        let url = URL(string: "ehr://employDetail?id=999&leave=true")
        UIApplication.shared.open(url!) { success in

        }
    }
}

