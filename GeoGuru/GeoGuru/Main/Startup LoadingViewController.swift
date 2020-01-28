//
//  Startup LoadingViewController.swift
//  GeoGuru
//
//  Created by Pranav Ramesh on 1/19/19.
//  Copyright © 2019 GeoGuru. All rights reserved.
//
/*
import UIKit
import Firebase
import FirebaseUI

class StartupLoadingViewController: UIViewController {
    
    var handle: AuthStateDidChangeListenerHandle?
    var userInfo: Dictionary = [
        "name": "",
        "email": "",
        "userID": "",
        "phoneNumber": "",
        "photoURL": ""
    ]
    
    var ref: DatabaseReference!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = Database.database().reference()
        
        handle = Auth.auth().addStateDidChangeListener({ (auth, user) in
            if let user = user {
                print("YES - User is signed in")
                print(auth.currentUser as Any)
                self.updateUserInfo(user)
            } else {
                self.performSegue(withIdentifier: "notSignedIn", sender: nil)
                print("NO - No user signed in")
            }
            
        })

    }
    
    func updateUserInfo(_ user: User?) {
        print(user?.displayName as Any, user?.email as Any, user?.uid as Any)
        if let userID = user?.uid {
            userInfo.updateValue(userID, forKey: "userID")
            
            if let name = user?.displayName {
                print("Got name")
                userInfo.updateValue(name, forKey: "name")
                ref.child("Users").child("\(userID)").child("name").setValue(name)
                
                
            } else {
                print("Didn't get name")
                ref.child("Users").child("\(userID)").child("name").observe(.childAdded) { (snapshot) in
                    let name = (snapshot.value as? String)!
                    print("Getting name instead from database", name)
                    self.userInfo.updateValue(name, forKey: "userID")
                    
                }
            }
            
            if let email = user?.email {
                userInfo.updateValue(email, forKey: "email")
                ref.child("Users").child("\(userID)").child("email").setValue(email)
            }
            
            
            ref.child("Users").child("\(userID)").child("userID").setValue(userID)
            
            if let phoneNumber = user?.phoneNumber {
                userInfo.updateValue(phoneNumber, forKey: "phoneNumber")
                ref.child("Users").child("\(userID)").child("phoneNumber").setValue(phoneNumber)
            }
            if let photoURL = user?.photoURL {
                userInfo.updateValue("\(photoURL)", forKey: "photoURL")
                ref.child("Users").child("\(userID)").child("photoURL").setValue("\(photoURL)")
                
                
            }
            
            performSegue(withIdentifier: "isSignedIn", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "isSignedIn" {
            let VC = segue.destination as! MainMenu
            VC.userInfo = userInfo
        }
    }

}
*/
