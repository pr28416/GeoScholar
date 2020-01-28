//
//  MainMenu.swift
//  GeoGuru
//
//  Created by Pranav and Keshav Ramesh on 9/22/18.
//  Copyright © 2018 GeoGuru. All rights reserved.
//

import UIKit
import Firebase

import Foundation

import Alamofire

class LearningPanel: UIViewController {
    @IBOutlet weak var backBlur: UIVisualEffectView!
    @IBOutlet weak var practiceButton: UIButton!
    @IBOutlet weak var challengeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        backBlur.layer.masksToBounds = true
        backBlur.layer.cornerRadius = 20
        practiceButton.layer.masksToBounds = true
        challengeButton.layer.masksToBounds = true
        practiceButton.layer.cornerRadius = 10
        challengeButton.layer.cornerRadius = 10
        
        self.view.addGestureRecognizer({
            let swipe = UISwipeGestureRecognizer(target: self, action: #selector(self.closePanel))
            swipe.direction = .down
            return swipe
        }())
    }
    @IBAction func practiceClicked(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name("showLearningPanel"), object: nil)
        NotificationCenter.default.post(name: NSNotification.Name("viewPractice"), object: nil)
    }
    @IBAction func challengeClicked(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name("showLearningPanel"), object: nil)
        NotificationCenter.default.post(name: NSNotification.Name("challengeTime"), object: nil)
    }
    @objc func closePanel() {
        NotificationCenter.default.post(name: NSNotification.Name("showLearningPanel"), object: nil)
    }
}

class FactStatsPanel: UIViewController {
    @IBOutlet weak var backBlur: UIVisualEffectView!
    @IBOutlet weak var usFactFiles: UIView!
    @IBOutlet weak var foreignSubdivisionCapitals: UIView!
    @IBOutlet weak var geoStats: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        backBlur.layer.masksToBounds = true
        backBlur.layer.cornerRadius = 20
        usFactFiles.layer.masksToBounds = true
        usFactFiles.layer.cornerRadius = 10
        foreignSubdivisionCapitals.layer.masksToBounds = true
        foreignSubdivisionCapitals.layer.cornerRadius = 10
        geoStats.layer.masksToBounds = true
        geoStats.layer.cornerRadius = 10
        
        self.view.addGestureRecognizer({
            let swipe = UISwipeGestureRecognizer(target: self, action: #selector(self.closePanel))
            swipe.direction = .down
            return swipe
        }())
    }
    
    @IBAction func usClicked(_ sender: Any) {
        closePanel()
        NotificationCenter.default.post(name: NSNotification.Name("usFactTime"), object: nil)
    }
    
    @IBAction func foreignClicked(_ sender: Any) {
        closePanel()
        NotificationCenter.default.post(name: NSNotification.Name("foreignSubdivision"), object: nil)
    }
    
    @IBAction func geoStatsClicked(_ sender: Any) {
        closePanel()
        NotificationCenter.default.post(name: NSNotification.Name("statMain"), object: nil)
    }
    
    @objc func closePanel() {
        NotificationCenter.default.post(name: NSNotification.Name("showFactsStats"), object: nil)
    }
}

class MainMenu: UIViewController {
    
    enum DataTypes: Int {
        case getData = 0,
        saveData
    }
    
    func storePurchases(manage type: DataTypes) {
        let userDefaults = UserDefaults.standard
        switch type {
        case .getData:
            let preParsedData = userDefaults.object(forKey: "myPurchasedCategories")
            if let postParsedData = preParsedData as? [String: Bool] {
                myPurchasedCategories = postParsedData
            }
        case .saveData:
            userDefaults.self.set(myPurchasedCategories, forKey: "myPurchasedCategories")
        }
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        learnButton.layer.masksToBounds = true
        mapButton.layer.masksToBounds = true
//        geoStatsButton.layer.masksToBounds = true
//        factFinder.layer.masksToBounds = true
        factsStatsButton.layer.masksToBounds = true
        orderBooks.layer.masksToBounds = true
        
        learnButton.layer.cornerRadius = 10
        mapButton.layer.cornerRadius = 10
        factsStatsButton.layer.cornerRadius = 10
//        geoStatsButton.layer.cornerRadius = 10
//        factFinder.layer.cornerRadius = 10
        orderBooks.layer.cornerRadius = 10
        
        setNeedsStatusBarAppearanceUpdate()
        ref = Database.database().reference()
        profilePic.layer.cornerRadius = 10
        
        NotificationCenter.default.addObserver(self, selector: #selector(showLearningPanel), name: NSNotification.Name("showLearningPanel"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showFactsStatsPanel), name: NSNotification.Name("showFactsStats"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(openPractice), name: NSNotification.Name("viewPractice"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(openChallenge), name: NSNotification.Name("challengeTime"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(openUSFacts), name: NSNotification.Name("usFactTime"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(openForeign), name: NSNotification.Name("foreignSubdivision"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(openGeoStats), name: NSNotification.Name("statMain"), object: nil)
        
        blackView = {
            let bv = UIView(frame: self.view.frame)
            bv.alpha = 0
            bv.backgroundColor = .black
            let swipe = UISwipeGestureRecognizer(target: self, action: #selector(showLearningPanel))
            swipe.direction = .down
            bv.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(showLearningPanel)))
            bv.addGestureRecognizer(swipe)
            return bv
        }()
        otherBlackView = {
            let bv = UIView(frame: self.view.frame)
            bv.alpha = 0
            bv.backgroundColor = .black
            let swipe = UISwipeGestureRecognizer(target: self, action: #selector(showFactsStatsPanel))
            swipe.direction = .down
            bv.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(showFactsStatsPanel)))
            bv.addGestureRecognizer(swipe)
            return bv
        }()
        self.view.insertSubview(blackView, belowSubview: learningPanel)
        self.view.insertSubview(otherBlackView, belowSubview: factsStatsPanel)
    }
    
    @IBOutlet weak var learningPanel: UIView!
    @IBOutlet weak var learningPanelConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var factsStatsPanel: UIView!
    @IBOutlet weak var factsStatsPanelConstraint: NSLayoutConstraint!
    
    var blackView = UIView()
    @objc func showBlackView() {
        UIView.animate(withDuration: 0.7) {
            self.blackView.alpha = 0.5
        }
    }
    @objc func hideBlackView() {
        UIView.animate(withDuration: 0.7) {
            self.blackView.alpha = 0
        }
    }
    var otherBlackView = UIView()
    @objc func showOtherBlackView() {
        UIView.animate(withDuration: 0.7) {
            self.otherBlackView.alpha = 0.5
        }
    }
    @objc func hideOtherBlackView() {
        UIView.animate(withDuration: 0.7) {
            self.otherBlackView.alpha = 0
        }
    }
    
    @objc func showLearningPanel() {
        var constraint = 0
        if learningPanelConstraint.constant == 300 {
            constraint = 0
            showBlackView()
        } else {
            constraint = 300
        }
        UIView.animate(withDuration: 0.85, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            self.learningPanelConstraint.constant = CGFloat(constraint)
            self.view.layoutIfNeeded()
        }, completion: nil)
        if learningPanelConstraint.constant == 300 {
            hideBlackView()
        }
    }
    
    @objc func showFactsStatsPanel() {
        var constraint = 0
        if factsStatsPanelConstraint.constant == -600 {
            constraint = 0
            showOtherBlackView()
        } else {
            constraint = -600
        }
        UIView.animate(withDuration: 0.85, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            self.factsStatsPanelConstraint.constant = CGFloat(constraint)
            self.view.layoutIfNeeded()
        }, completion: nil)
        if factsStatsPanelConstraint.constant == -600 {
            hideOtherBlackView()
        }
    }
    
    @objc func openPractice() {
        self.performSegue(withIdentifier: "viewPractice", sender: nil)
    }
    
    @objc func openChallenge() {
        self.performSegue(withIdentifier: "challengeTime", sender: nil)
    }
    
    @objc func openUSFacts() {
        self.performSegue(withIdentifier: "usFactTime", sender: nil)
    }
    
    @objc func openForeign() {
        self.performSegue(withIdentifier: "foreignSubdivision", sender: nil)
    }
    
    @objc func openGeoStats() {
        self.performSegue(withIdentifier: "statMain", sender: nil)
    }
    
    @IBAction func learnClicked(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name("showLearningPanel"), object: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "viewPractice":
            print(1)
            print(learnButton.center)
            (segue as! OHCircleSegue).circleOrigin = learnButton.center
        case "showMap":
            print(2)
            print(mapButton.center)
            (segue as! OHCircleSegue).circleOrigin = mapButton.center
        case "statMain":
            print(3)
            print(factsStatsButton.center)
            (segue as! OHCircleSegue).circleOrigin = factsStatsButton.center
        case "challengeTime":
            print(4)
            print(learnButton.center)
            (segue as! OHCircleSegue).circleOrigin = learnButton.center
        case "usFactTime":
            print(5)
            print(factsStatsButton.center)
            (segue as! OHCircleSegue).circleOrigin = factsStatsButton.center
        case "showWebView":
            print(6)
            print(orderBooks.center)
            (segue as! OHCircleSegue).circleOrigin = orderBooks.center
        case "foreignSubdivision":
            print(7)
            print(factsStatsButton.center)
            (segue as! OHCircleSegue).circleOrigin = factsStatsButton.center
        default:
            break
        }
    }
    
    @IBOutlet var profilePic: UIImageView!
    @IBOutlet var learnButton: UIButton!
    @IBOutlet var mapButton: UIButton!
    @IBOutlet var orderBooks: UIButton!
    @IBOutlet var databaseView: UIButton!
    @IBOutlet weak var factsStatsButton: UIButton!
    
    @IBAction func factsStatsClicked(_ sender: Any) {
        showFactsStatsPanel()
    }
    
    var ref: DatabaseReference!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        /*handle = Auth.auth().addStateDidChangeListener({ (auth, user) in
         if let user = user {
         print("YES - User is signed in")
         print(auth.currentUser as Any)
         self.updateUserInfo(user)
         } else {
         //                self.performSegue(withIdentifier: "returnToLoginPage", sender: nil)
         print("NO - No user signed in")
         }
         
         })*/
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        //Auth.auth().removeStateDidChangeListener(handle!)
    }
    
    @IBOutlet var signInStatus: UILabel!
    
    /*func updateUserInfo(_ user: User?) {
     print(user?.displayName as Any, user?.email as Any, user?.uid as Any)
     if let userID = user?.uid {
     signInStatus.text = "Welcome, User!"
     userInfo.updateValue(userID, forKey: "userID")
     
     if let name = user?.displayName {
     print("Got name")
     userInfo.updateValue(name, forKey: "name")
     ref.child("Users").child("\(userID)").child("name").setValue(name)
     
     signInStatus.text = "Welcome, \(name)"
     } else {
     print("Didn't get name")
     ref.child("Users").child("\(userID)").child("name").observe(.childAdded) { (snapshot) in
     let name = (snapshot.value as? String)!
     print("Getting name instead from database", name)
     self.userInfo.updateValue(name, forKey: "userID")
     self.signInStatus.text = "Welcome, \(name)"
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
     
     let imageUrl:URL = photoURL
     
     // Start background thread so that image loading does not make app unresponsive
     DispatchQueue.global(qos: .userInitiated).async {
     
     let imageData:NSData = NSData(contentsOf: imageUrl)!
     
     // When from background thread, UI needs to be updated on main_queue
     DispatchQueue.main.async {
     let image = UIImage(data: imageData as Data)
     self.profilePic.image = image
     self.profilePic.layer.cornerRadius = 10
     }
     
     }
     
     }
     
     for (key, value) in userInfo {
     print("\(key): \(value)")
     }
     
     } else { // Not signed in
     signInStatus.text = "Not signed in."
     }
     }*/
    @IBAction func signOutPressed(_ sender: UIButton) {/*
         let alert = PCLBlurEffectAlertController(title: "Confirm sign out?", message: "Are you sure you want to sign out of GeoScholar?", effect: UIBlurEffect(style: .dark), style: .alert)
         alert.configure(titleColor: UIColor.white)
         alert.configure(messageColor: UIColor.white)
         alert.addAction(PCLBlurEffectAlertAction(title: "Sign out", style: .destructive, handler: { (action) in
         let firebaseAuth = Auth.auth()
         
         do {
         try! firebaseAuth.signOut()
         try! Auth.auth().signOut()
         try! GIDSignIn.sharedInstance()?.signOut()
         print("successful signout")
         self.userInfo.removeAll()
         
         self.performSegue(withIdentifier: "returnToLoginPage", sender: nil)
         } catch let signOutError as NSError {
         print("Error signing out: \(signOutError)")
         }
         }))
         alert.addAction(PCLBlurEffectAlertAction(title: "Cancel", style: .default, handler: nil))
         
         userInfo.updateValue("", forKey: "name")
         userInfo.updateValue("", forKey: "userID")
         userInfo.updateValue("", forKey: "email")
         userInfo.updateValue("", forKey: "phoneNumber")
         userInfo.updateValue("", forKey: "photoID")
         present(alert, animated: true, completion: nil)
         */
    }
    
    //    @IBAction func didTapSignOut(_ sender: UIButton) {
    //        // Starting signout
    //        let firebaseAuth = Auth.auth()
    //        do {
    //            try firebaseAuth.signOut()
    //
    //        } catch let signOutError as NSError {
    //            print ("Error signing out: \(signOutError)")
    //        }
    //        // Ending signout
    //    }
    
}
