//
//  MainViewController.swift
//  Chapter05And06Demo
//
//  Created by Siddharth Kurnal on 1/27/20.
//  Copyright © 2020 Siddharth Kurnal. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var usernameLabel: UILabel!
    
    var loginUsername: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        usernameLabel.text = "You are Logged In as \(loginUsername)"
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
