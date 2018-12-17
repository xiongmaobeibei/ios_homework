//
//  ViewController.swift
//  alertController
//
//  Created by student on 2018/11/7.
//  Copyright © 2018年 tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func actionSheet(_ sender: Any) {
        let alert = UIAlertController(title: "sction sheet", message: "this is an action alert", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "green", style: .default, handler: {(action) in
            print("ok clicked")
            self.view.backgroundColor = UIColor.green
        }))
        alert.addAction(UIAlertAction(title: "red", style: .destructive, handler: {(action) in
            print("destuctive clicked")
            self.view.backgroundColor = UIColor.red
        }))
        alert.addAction(UIAlertAction(title: "gray", style: .cancel, handler: {(action) in
            print("cancel clicked")
            self.view.backgroundColor = UIColor.gray
        }))
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func login(_ sender: Any) {
        let alert = UIAlertController(title: "login", message: "please input your personal information", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "login", style: .default, handler: {(action) in
            if let userNameTextField = alert.textFields?.first,
                let passwordTextField = alert.textFields?.last {
                print("username:\(userNameTextField.text!) password:\(passwordTextField.text!)")
            }
        }))
        alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: {(action) in}))
        
        alert.addTextField { (textField) in
            textField.placeholder = "your user name?"
        }
        alert.addTextField { (textField) in
            textField.placeholder = "your password?"
            textField.isSecureTextEntry = true
        }
        present(alert, animated: true, completion: nil)
    }
    
}

