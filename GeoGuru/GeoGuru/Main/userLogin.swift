//
//  userLogin.swift
//  GeoGuru
//
//  Created by Pranav Ramesh on 11/23/18.
//  Copyright © 2018 GeoGuru. All rights reserved.
//

import UIKit
//import FirebaseUI
//import FirebaseAuth
import Firebase
import PCLBlurEffectAlert

class userLogin: UIViewController {
    
    @IBOutlet var signInLabel: UILabel!
    @IBOutlet var emailBox: UITextField!
    @IBOutlet var pwdBox: UITextField!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var switchLogin: UISegmentedControl!
    
    
    @IBAction func switchLoginChanged(_ sender: UISegmentedControl) {
        if switchLogin.selectedSegmentIndex == 0 {
            signInLabel.text = "Sign in"
            loginButton.setTitle("Login", for: .normal)
        } else {
            signInLabel.text = "Sign up"
            loginButton.setTitle("Sign up", for: .normal)
        }
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
//        if !(emailBox.text?.isEmpty)! && !(pwdBox.text?.isEmpty)! {
//
//            if switchLogin.selectedSegmentIndex == 0 { // Login user
//
//                //                Auth.auth().signIn(withEmail: emailBox.text!, password: pwdBox.text!, completion: { (user, error) in
//
//                if user != nil {
//
//                    let alert = PCLBlurEffectAlertController(title: "Success!", message: "You have signed in successfully.", effect: UIBlurEffect(style: .dark), style: .alert)
//                    let okAction = PCLBlurEffectAlertAction(title: "OK", style: .default, handler: { (action) in
//                        self.navigationController?.popViewController(animated: true)
//                    })
//                    alert.addAction(okAction)
//
//                    alert.configure(titleColor: UIColor.white)
//                    alert.configure(messageColor: UIColor.white)
//                    alert.configure(cornerRadius: 10)
//
//                    self.present(alert, animated: true, completion: nil)
//
//                } else {
//
//                    if let myError = error?.localizedDescription {
//                        print(myError)
//
//                        let alert = PCLBlurEffectAlertController(title: "Invalid login", message: "Something went wrong. Error: \(myError)", effect: UIBlurEffect(style: .dark), style: .alert)
//                        let okAction = PCLBlurEffectAlertAction(title: "Try again", style: .default, handler: nil)
//                        alert.addAction(okAction)
//
//                        alert.configure(titleColor: UIColor.white)
//                        alert.configure(messageColor: UIColor.white)
//                        alert.configure(cornerRadius: 20)
//
//                        self.present(alert, animated: true, completion: nil)
//                    } else {
//                        print(error as Any)
//                    }
//                }
//
//            })
//
//        } else if switchLogin.selectedSegmentIndex == 1 { // Sign up user
//            //                Auth.auth().createUser(withEmail: emailBox.text!, password: pwdBox.text!, completion: { (user, error) in
//
//            if user != nil {
//                let alert = PCLBlurEffectAlertController(title: "Success!", message: "You have signed up successfully!", effect: UIBlurEffect(style: .dark), style: .alert)
//                let okAction = PCLBlurEffectAlertAction(title: "OK", style: .default, handler: nil)
//                alert.addAction(okAction)
//
//                alert.configure(titleColor: UIColor.white)
//                alert.configure(messageColor: UIColor.white)
//                alert.configure(cornerRadius: 20)
//
//                self.present(alert, animated: true, completion: nil)
//
//            } else {
//
//                if let myError = error?.localizedDescription {
//                    print(myError)
//
//                    let alert = PCLBlurEffectAlertController(title: "Invalid signup", message: "Something went wrong. Error: \(myError)", effect: UIBlurEffect(style: .dark), style: .alert)
//                    let okAction = PCLBlurEffectAlertAction(title: "Try again", style: .default, handler: nil)
//                    alert.addAction(okAction)
//
//                    alert.configure(titleColor: UIColor.white)
//                    alert.configure(messageColor: UIColor.white)
//                    alert.configure(cornerRadius: 20)
//
//                    self.present(alert, animated: true, completion: nil)
//                } else {
//                    print(error as Any)
//                }
//
//            }
//
//        })
//    }
    
    
}

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 20
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
        
        // Do any additional setup after loading the view.
    }

}
