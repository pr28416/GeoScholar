//
//  LoginService.swift
//  GeoGuru
//
//  Created by Pranav Ramesh on 11/24/18.
//  Copyright © 2018 GeoGuru. All rights reserved.
//

import UIKit
import Firebase
//import FirebaseUI
//import GoogleSignIn
//import TwitterKit
//import FBSDKCoreKit
//import FBSDKLoginKit
import Foundation
//import FacebookCore
//import FacebookLogin

class LoginService: UIViewController {
    
    // Sign up info
    @IBOutlet var firstNameField: UITextField!
    @IBOutlet var lastNameField: UITextField!
    @IBOutlet var emailField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    @IBAction func signUpAnonymouslyPressed(_ sender: UIButton) {
//        let confirmAlert = UIAlertController(title: "Are you sure?", message: "Are you sure you want to sign up anonymously? Your data and purchases will not be saved when you use GeoScholar.", preferredStyle: .alert)
//        confirmAlert.addAction(UIAlertAction(title: "Go back", style: .cancel, handler: nil))
//        confirmAlert.addAction(UIAlertAction(title: "Continue", style: .default, handler: { (action) in
//            let auth = Auth.auth()
//            auth.signInAnonymously(completion: { (user, error) in
//                if let error = error {
//                    let failAlert = UIAlertController(title: "Error", message: "There was an error trying to sign up. Error: \(error)", preferredStyle: .alert)
//                    failAlert.addAction(UIAlertAction(title: "Go back", style: .cancel, handler: nil))
//                    self.present(failAlert, animated: true, completion: nil)
//                }
//
//                // Success
//                if user != nil {
//                    if let userID = user?.user.uid {
//                        let successAlert = UIAlertController(title: "Welcome!", message: "Welcome to GeoScholar! You have successfully signed up anonymously."/* This app is still in its beta stages so some features may not be available in this version yet.*/, preferredStyle: .alert)
//                        successAlert.addAction(UIAlertAction(title: "Enter GeoScholar", style: .default, handler: { (action) in
//                            self.performSegue(withIdentifier: "successfulLogin", sender: nil)
//                        }))
//
//
//                        self.present(successAlert, animated: true, completion: nil)
//
//                        //                        } else {
//                        //                            self.emailError(error: error)
//                        //                        }
//                    } else {
//                        self.emailError(error: error)
//                    }
//                } else {
//                    self.emailError(error: error)
//                }
//            })
//        }))
//
//        self.present(confirmAlert, animated: true, completion: nil)
    }
    
    @IBAction func googleLogin(_ sender: UIButton) {
//        GIDSignIn.sharedInstance()?.signIn()
    }
    
    @IBOutlet var signUpButton: UIButton!
    
    // Login existing user
    @IBOutlet var GIDSignInButton: UIView!
    @IBOutlet var emailLoginButton: UIButton!
    
    var ref: DatabaseReference!
    
    @IBOutlet var emailView: UIView!
    @IBOutlet var googleLoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        emailView.layer.cornerRadius = 10
//        googleLoginButton.layer.cornerRadius = 10
//        GIDSignIn.sharedInstance()?.uiDelegate = self
//        GIDSignInButton.layer.cornerRadius = 10
//        emailLoginButton.layer.cornerRadius = 10
//
//        ref = Database.database().reference()
//        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
    }
    
    func emailError(error: Error?) {
//        if let error = error?.localizedDescription {
//            print(error)
//            let failAlert = UIAlertController(title: "Unsuccessful sign up", message: "Something went wrong while signing up. Error: \(error)", preferredStyle: .alert)
//            failAlert.addAction(UIAlertAction(title: "Go back", style: .cancel, handler: nil))
//
//
//            self.present(failAlert, animated: true, completion: nil)
//        } else {
//
//            print(error as Any)
//
//            let failAlert = UIAlertController(title: "Unsuccessful sign up", message: "Something went wrong while signing up. Error: \(String(describing: error))", preferredStyle: .alert)
//            failAlert.addAction(UIAlertAction(title: "Go back", style: .cancel, handler: nil))
//
//            self.present(failAlert, animated: true, completion: nil)
//        }
    }
    
    @IBAction func attemptEmailSignup(_ sender: UIButton) {
//        print("preparing")
//        print(firstNameField.text, lastNameField.text, emailField.text, passwordField.text)
//        if let getFirstName = firstNameField.text, let getLastName = lastNameField.text, let getEmail = emailField.text, let getPassword = passwordField.text, !getFirstName.isEmpty, !getLastName.isEmpty, !getEmail.isEmpty, !getPassword.isEmpty {
//
//            print("starting")
//            print(getFirstName, getLastName, getEmail, getPassword)
//
//            Auth.auth().createUser(withEmail: getEmail, password: getPassword) { (user, error) in
//
//
//                if user != nil {
//                    if let userID = user?.user.uid {
//
//
////                        if let firstName = getFirstName, let lastName = self.lastNameField.text {
//                        self.ref.child("Users").child("\(userID)").child("name").setValue("\(getFirstName) \(getLastName)")
//                        for item in myPurchasedCategories {
//                            self.ref.child("In-App Purchases").child("\(userID)").child("\(item.key)").setValue(false)
//                        }
//                        let successAlert = UIAlertController(title: "Success!", message: "You have successfully signed up to GeoGuru with your email.", preferredStyle: .alert)
//                        successAlert.addAction(UIAlertAction(title: "Enter GeoScholar", style: .default, handler: { (action) in
//                            self.performSegue(withIdentifier: "successfulLogin", sender: nil)
//                        }))
//
//
//                        self.present(successAlert, animated: true, completion: nil)
//
////                        } else {
////                            self.emailError(error: error)
////                        }
//                    } else {
//                        self.emailError(error: error)
//                    }
//                } else {
//                    self.emailError(error: error)
//                }
//            }
//        } else {
//            print("Self error: Not all boxes are filled")
//            let incompleteAlert = UIAlertController(title: "Invalid sign up", message: "Please fill in all the fields.", preferredStyle: .alert)
//            incompleteAlert.addAction(UIAlertAction(title: "Go back", style: .cancel, handler: nil))
//            present(incompleteAlert, animated: true, completion: nil)
//        }
        
    }
    
    func attemptEmailLogin() {
//        let loginView = UIAlertController(title: "Log in", message: "Enter your existing email and password.", preferredStyle: .alert)
//        loginView.addTextField { (emailField) in
//            emailField.placeholder = "Email"
//        }
//        loginView.addTextField { (pwdField) in
//            pwdField.placeholder = "Password"
//            pwdField.isSecureTextEntry = true
//        }
//        loginView.addAction(UIAlertAction(title: "Login", style: .default, handler: { (action) in
//            Auth.auth().signIn(withEmail: loginView.textFields![0].text!, password: loginView.textFields![1].text!, completion: { (user, error) in
//                if user != nil {
//
//                    // Logged in successfully - no errors
//                    self.performSegue(withIdentifier: "successfulLogin", sender: nil)
//                } else {
//                    if let error = error?.localizedDescription {
//                        print(error)
//
//                        let errorAlert = UIAlertController(title: "Invalid login", message: "Something went wrong. Error: \(error)", preferredStyle: .alert)
//                        errorAlert.addAction(UIAlertAction(title: "Try again", style: .default, handler: { (action) in
//                            self.attemptEmailLogin()
//                        }))
//                        errorAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
//                        self.present(errorAlert, animated: true, completion: nil)
//                    } else {
//                        print(error as Any)
//                    }
//                }
//            })
//        }))
//
//        loginView.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
//
//        // Presenting the attempt of logging in through email
//        self.present(loginView, animated: true, completion: nil)

    }
    
    @IBAction func emailLoginClicked(_ sender: UIButton) {
//        attemptEmailLogin()
    }
    
}
