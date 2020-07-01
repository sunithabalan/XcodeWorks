//
//  DetailViewController.swift
//  flamesgame
//
//  Created by Sunitha Balasubramanian on 18/06/20.
//  Copyright © 2020 Sunitha Balasubramanian. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var labelView: UILabel!
    var dataText = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelView.text = dataText

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
