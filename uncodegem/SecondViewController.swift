//
//  SecondViewController.swift
//  uncodegem
//
//  Created by dave on 06.06.2020.
//  Copyright © 2020 uncodegem. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var login: String?
    var text: String?
    
    @IBOutlet weak var HelloLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        text = "Hello, \(login ?? "man")!"
        HelloLable.text = text
    }
    
    
    @IBAction func goBack(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
}
