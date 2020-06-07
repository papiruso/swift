//
//  ViewController.swift
//  uncodegem
//
//  Created by dave on 03.06.2020.
//  Copyright © 2020 uncodegem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TFLogin: UITextField!
    @IBOutlet weak var TFPassworf: UITextField!
    
    @IBAction func auth(_ sender: UIButton) {
        let login = TFLogin.text!
        
        if (login.count != 0) {
            performSegue(withIdentifier: "loginDetail", sender: nil)
        } else {
            performSegue(withIdentifier: "thirdDetail", sender: nil)
        }
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        guard segue.identifier == "unwindSegue" else { return }
        guard let svc = segue.source as? SecondViewController else { return }
        
        print(svc.text!)
    }
    
    @IBAction func unwindSegueThird(segue: UIStoryboardSegue) {
        guard segue.identifier == "unwindSegueThird" else { return }
        
        print("ok")
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else { return }
        
        dvc.login = TFLogin.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func goThird(_ sender: UIButton) {
        performSegue(withIdentifier: "thirdDetail", sender: nil)
    }
}


