//
//  HomeViewController.swift
//  Chapter05And06Demo
//
//  Created by Siddharth Kurnal on 1/27/20.
//  Copyright © 2020 Siddharth Kurnal. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    //If password is 1519, let it go through and access the other page.
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBAction func login(_ sender: UIButton) {
        let password = passwordTextField.text ?? "no password"
        if password == "1519" {
            performSegue(withIdentifier: "MainSegue", sender: self)
        }
        else
        {
            print("Incorrect password")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        let mainVC = segue.destination as? MainViewController
        // Pass the selected object to the new view controller.
        mainVC?.loginUsername = usernameTextField.text ?? "No Username"
    }
    

}
