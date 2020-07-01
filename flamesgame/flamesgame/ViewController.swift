//
//  ViewController.swift
//  flamesgame
//
//  Created by Sunitha Balasubramanian on 17/06/20.
//  Copyright © 2020 Sunitha Balasubramanian. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var textfield: UITextField!
    @IBOutlet var txt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txt.delegate = self
        txt.keyboardType = .numberPad
        
        
        // Do any additional setup after loading the view.
    }
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          let vc = segue.destination as? DetailViewController
    
    vc?.dataText = textfield.text ?? "nil" // someValue.text
    }
    
}
