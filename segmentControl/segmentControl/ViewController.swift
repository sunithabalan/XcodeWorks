//
//  ViewController.swift
//  segmentControl
//
//  Created by Sunitha Balasubramanian on 29/06/20.
//  Copyright © 2020 Sunitha Balasubramanian. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    var SelectedDay:String = ""
    var dayView = UITextView()
    var timeSheet = ["Sunday":"WorkUpdates","Monday":"WorkUpdates","Tuesday":"WorkUpdates","Wednesday":"WorkUpdates","Thursday":"WorkUpdates","Friday":"WorkUpdates","Saturday":"WorkUpdates"]
    func addControl(){
        
        let segmentItems = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]
        let control = UISegmentedControl(items: segmentItems)
        control.frame = CGRect(x:10,y:250, width: (self.view.frame.width-20), height: 50)
        control.addTarget(self, action: #selector(segmentControl(_:)), for: .valueChanged)
        control.selectedSegmentIndex = 1
        view.addSubview(control)
    }
    
//    @IBOutlet weak var segmentControl: UISegmentedControl!
    @objc func segmentControl(_ segmentedControl: UISegmentedControl){
        switch (segmentedControl.selectedSegmentIndex){
                    case 0:
                        SelectedDay = "Sunday"
                        dayView.text = timeSheet["Sunday"]
                    case 1:
                        SelectedDay = "Monday"
                        dayView.text = timeSheet["Monday"]
                    case 2:
                        SelectedDay = "Tuesday"
                       dayView.text = timeSheet["Tuesday"]
                    case 3:
                        SelectedDay = "Wednesday"
                        dayView.text = timeSheet["Wednesday"]
                    case 4:
                        SelectedDay = "Thursday"
                       dayView.text = timeSheet["Thursday"]
                    case 5:
                        SelectedDay = "Friday"
                        dayView.text = timeSheet["Friday"]
                    case 6:
                        SelectedDay = "Saturday"
                       dayView.text = timeSheet["Saturday"]
            
                    default:
                          break
                }
        
    }
//    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
            super.viewDidLoad()
        dayView.delegate = self
            addControl()
        dayView.textColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        dayView.font = .systemFont(ofSize: 35)
        view.addSubview(dayView)
        dayView.frame = CGRect(x:100,y:350, width: (self.view.frame.width-20), height: 100)
        
        }
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        timeSheet[SelectedDay] = textView.text + text
        return true
    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = ""
        
        
    }
    
//    func textViewDidEndEditing(_ textView: UITextView) {
//        textView.resignFirstResponder()
//    }
//


}

    
//    @IBAction func indexChange(_ sender: Any) {
//        switch segmentControl.selectedSegmentIndex{
//            case 0:
//                label.text = "Hello"
//            case 1:
//                label.text = "Hi"
//            default:
//                  break
//        }
//    }

