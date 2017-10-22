//
//  WebDevelopmentViewController.swift
//  basecase
//
//  Created by Sarah Greisdorf on 10/21/17.
//  Copyright © 2017 Sarah Greisdorf. All rights reserved.
//

import UIKit

class WebDevelopmentViewController: UIViewController {
    
    
    @IBOutlet weak var inputUsername: UITextView!
    
    @IBOutlet weak var userName: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        userName.text = defaults.object(forKey: "userNameKey") as! String
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
