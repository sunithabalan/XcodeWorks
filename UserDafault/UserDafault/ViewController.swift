//
//  ViewController.swift
//  UserDafault
//
//  Created by Sunitha Balasubramanian on 14/07/20.
//  Copyright © 2020 Sunitha Balasubramanian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 let defaults = UserDefaults.standard
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var stateSwitch: UISwitch!
    override func viewDidLoad() {
           super.viewDidLoad()
        defaults.set("The Switch ON",forKey: "SwitchON")
        defaults.set("The Switch OFF", forKey: "SwitchOFF")
           stateSwitch.addTarget(self, action: #selector(stateChanged), for: .touchUpInside)
       }
    
    @IBAction func buttonClicked(_ sender: Any) {
        if stateSwitch.isOn{
            textLabel.text = defaults.getStringValue(forKey: "SwitchOFF")
            stateSwitch.setOn(false, animated: true)
        }
        else{
            textLabel.text = defaults.getStringValue(forKey: "SwitchON")
            stateSwitch.setOn(true, animated: true)
        }
    }
   
    @objc func stateChanged(){
        if stateSwitch.isOn{
            textLabel.text = defaults.getStringValue(forKey: "SwitchOFF")
           
        }
        else{
            textLabel.text = defaults.getStringValue(forKey: "SwitchON")
            }
        
    }


}
extension UserDefaults{
    func getStringValue(forKey key: String) -> String{
        guard let  value = UserDefaults.standard.string(forKey: key)
            else{return " "}
        return value
    }
    
}
