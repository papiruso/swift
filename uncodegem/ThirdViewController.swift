//
//  ThirdViewController.swift
//  uncodegem
//
//  Created by dave on 07.06.2020.
//  Copyright © 2020 uncodegem. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

   
    @IBAction func goHome(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindSegueThird", sender: nil)
    }
    
}
