//
//  ViewController.swift
//  Toolbar
//
//  Created by Sunitha Balasubramanian on 24/06/20.
//  Copyright © 2020 Sunitha Balasubramanian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var text: UITextField!
    let picker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
        createpicker()
        // Do any additional setup after loading the view.
    }
    func createpicker(){
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let done = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(clicked))
        toolbar.setItems([done], animated: false)
        text.inputAccessoryView = toolbar
        text.inputView = picker
        picker.datePickerMode = .date
    }
    @objc func clicked(){
        text.text = "\(picker.date)"
        self.view.endEditing(true)
    }

    

}


