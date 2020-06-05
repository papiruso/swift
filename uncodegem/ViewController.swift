//
//  ViewController.swift
//  uncodegem
//
//  Created by dave on 03.06.2020.
//  Copyright © 2020 uncodegem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findDayButton(_ sender: UIButton) {
        print(dateTF.text!)
    }
}

