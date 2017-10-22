//
//  LogInViewController.swift
//  basecase
//
//  Created by Sarah Greisdorf on 10/21/17.
//  Copyright © 2017 Sarah Greisdorf. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController, UITextFieldDelegate {


    
    //username input
    @IBOutlet weak var usernameInput: UITextField!
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    
    @IBOutlet weak var UserName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.usernameTextField.delegate = self
        

        // Do any additional setup after loading the view
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Hide keyboard when user touches outside keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //Presses return key
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        usernameTextField.resignFirstResponder()
        return (true)
    }
    @IBAction func signInPressed(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(usernameTextField.text, forKey: "userNameKey")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
