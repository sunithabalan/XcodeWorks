//
//  ViewController.swift
//  Button
//
//  Created by Sunitha Balasubramanian on 23/06/20.
//  Copyright © 2020 Sunitha Balasubramanian. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    let saveButton = UIButton()
    let refreshButton = UIButton()
    var textField = UITextField()
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        textField.placeholder = "Text...."
        textField.borderStyle = .roundedRect
        refreshButton.backgroundColor = UIColor.red
        refreshButton.translatesAutoresizingMaskIntoConstraints = false
        textField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(textField)
        view.addSubview(refreshButton)
        refreshButton.setTitle("refreshButton", for: .normal)
        
        let refreshButtonRight = NSLayoutConstraint(item: refreshButton, attribute: .rightMargin, relatedBy: .equal, toItem: view, attribute: .rightMargin, multiplier: 1.0, constant: -10.0)
        let refreshButtonLeft = NSLayoutConstraint(item: refreshButton, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 55.0)
        //TextfieldConstraints
        let textFieldX = NSLayoutConstraint(item: textField, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        let textFieldY = NSLayoutConstraint(item: textField, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0.0)
        let textFieldWidth = NSLayoutConstraint(item: textField, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leadingMargin, multiplier: 1.0, constant: 30.0)
        NSLayoutConstraint.activate([refreshButtonRight, refreshButtonLeft, textFieldX, textFieldY, textFieldWidth])
        //SaveButton Constraints
        saveButton.backgroundColor = UIColor.red
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(saveButton)
        saveButton.setTitle("Save", for: .normal)
        let saveButtonCenterX = NSLayoutConstraint(item: saveButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        let saveButtoncenterY = NSLayoutConstraint(item: saveButton, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -50.0)
        NSLayoutConstraint.activate([saveButtonCenterX, saveButtoncenterY])
        saveButton.alpha = 0.5

        refreshButton.addTarget(self, action: #selector(refreshAction), for: .touchUpInside)
        
             
    }
    
    @objc func refreshAction() {
      buttonAction()
        
    }
    @objc func action(){
      //  button.backgroundColor = UIColor.lightGray
        saveButton.setTitle("Saved", for: .normal)
        saveButton.alpha = 0.5
        saveButton.isEnabled = false
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        let text = textField.text ?? ""
        
        let newLen = text.count + string.count - range.length
        if newLen > 0 {
            saveButton.isEnabled = true
            saveButton.alpha = 1
            saveButton.addTarget(self, action: #selector(action), for: .touchUpInside)
        } else {
            saveButton.isEnabled = false
            saveButton.alpha = 0.5
        }
        return true
    }
    
    func buttonAction () {
        textField.text = ""
        saveButton.alpha = 0.5
        saveButton.setTitle("Save", for: .normal)
        
    }
     func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
    }
}










//class ViewController: UIViewController {
//    let button = UIButton()
//    override func viewDidLoad() {
//        super.viewDidLoad()
//     //   Action()
//
////        button.frame  = CGRect(x: 20, y: 30, width: 100, height: 200)
////
////        button.setTitle("Help", for: .normal)
////
////        button.backgroundColor = UIColor.red
////        button.addTarget(self, action: #selector(Action), for: .touchUpInside)
////         self.view.addSubview(button)
//        // Do any additional setup after loading the view.
//    }
////    @objc func Action(){
////        button.backgroundColor = UIColor.yellow
////    }
//
//    }
//
//
//
//
//
//


//   func Action(){
//        let button1 = UIButton(type: .system)
//        button1.backgroundColor = UIColor.yellow
//        button1.setTitle("Help", for: .normal)
//       // button1.frame  = CGRect(x: 10, y: 20, width: 50, height: 100)
//        //button1.center = self.view.center
//    button1.translatesAutoresizingMaskIntoConstraints = false
//    view.addSubview(button1)
//    let centerx = NSLayoutConstraint(item: button1, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
//     let centery = NSLayoutConstraint(item: button1, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0.0)
//    NSLayoutConstraint.activate([centerx,centery])
//        let img = UIImage(systemName: "heart.circle")
//        button1.setImage(img, for: .normal)
//
//
//
//    }



