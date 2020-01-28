//
//  AppDelegate.swift
//  GeoGuru
//
//  Created by Pranav and Keshav Ramesh on 9/3/18.
//  Copyright © 2018 GeoGuru. All rights reserved.
//

import UIKit
import Firebase
//import FirebaseUI
import SwiftyStoreKit
//import TwitterKit
//import GoogleSignIn
//import FBSDKCoreKit
//import FBSDKLoginKit
import Alamofire

class Connectivity {
    class var isConnectedToInternet: Bool {
        return NetworkReachabilityManager()!.isReachable
    }
    class var isConnectedOnEthernetOrWifi: Bool {
        return NetworkReachabilityManager()!.isReachableOnEthernetOrWiFi
    }
}

var NorthAmerica = [[String]]()
var SouthAmerica = [[String]]()
var Asia = [[String]]()
var Europe = [[String]]()
var Australia = [[String]]()
var Africa = [[String]]()
var Antarctica = [[String]]()
var UnitedStates = [[String]]()
var PhysicalGeography = [[String]]()
var CulturalGeography = [[String]]()
var EconomicGeography = [[String]]()
var PoliticalGeography = [[String]]()
var HistoricalGeography = [[String]]()
var Miscellaneous = [[String]]()
var MultipleChoiceQuestions = [[String]]()
var countryCapitals = [[String]]()
var usCapitals = [[String]]()

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var ref: DatabaseReference!
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        UINavigationBar.appearance().tintColor = UIColor.white
        
        // Initialize FirebaseUI to kick off the sign in flow
        FirebaseApp.configure()
        ref = Database.database().reference()
//        let authUI = FUIAuth.defaultAuthUI()
        // You need to adopt a FUIAuthDelegate protocol to receive callback
//        authUI?.delegate = self as? FUIAuthDelegate
        
        // Configure FirebaseUI to use the sign-in methods you want to support
        
        NetworkReachabilityManager()!.startListening()
        if Connectivity.isConnectedToInternet {
            print("YES - Internet is available.")
            NetworkReachabilityManager()!.stopListening()
            let userDefaults = UserDefaults.standard
            if let postParsedData = userDefaults.object(forKey: "productIDs") as? [String] {
                productIDs = postParsedData
            }
//            if let postParsedData = userDefaults.object(forKey: "productNames") as? [String] {
//                productNames = postParsedData
//            }
//            if let postParsedData = userDefaults.object(forKey: "productPrices") as? [String:String] {
//                productPrices = postParsedData
//            }
            for productID in productIDs {
                print("AppDelegate SwiftyStoreKit setup\n--------------------------------")
                SwiftyStoreKit.retrieveProductsInfo([productID]) { result in
                    if let product = result.retrievedProducts.first {
                        let priceString = product.localizedPrice!
                        print("Product: \(product.localizedDescription), price: \(priceString)")
                        
                        productPrices[productID] = priceString
//                        saveData(withData: productPrices, id: "productPrices")
//                        saveData(withData: productNames, id: "productNames")
                        saveData(withData: productIDs, id: "productIDs")
                    }
                    else if let invalidProductId = result.invalidProductIDs.first {
                        print("Invalid product identifier: \(invalidProductId)")
                        let userDefaults = UserDefaults.standard
                        if let postParsedData = userDefaults.object(forKey: "productPrices") as? [String:String] {
                            productPrices = postParsedData
                        }
                    }
                    else {
                        print("Error: \(result.error)")
                        let userDefaults = UserDefaults.standard
                        if let postParsedData = userDefaults.object(forKey: "productPrices") as? [String:String] {
                            productPrices = postParsedData
                        }
                    }
                }
            }
            
            for (item, value) in productPrices { print(item, value) }
            
            
        } else if Connectivity.isConnectedOnEthernetOrWifi {
            print("MAYBE - Internet is connected on ethernet or wifi.")
            let userDefaults = UserDefaults.standard
            if let postParsedData = userDefaults.object(forKey: "productPrices") as? [String:String] {
                productPrices = postParsedData
            }
        } else {
            print("NO - Internet doesn't seem to be available.")
            let userDefaults = UserDefaults.standard
            if let postParsedData = userDefaults.object(forKey: "productPrices") as? [String:String] {
                productPrices = postParsedData
            }
        }
        
        
        // see notes below for the meaning of Atomic / Non-Atomic
        SwiftyStoreKit.completeTransactions(atomically: true) { purchases in
            for purchase in purchases {
                switch purchase.transaction.transactionState {
                case .purchased, .restored:
                    if purchase.needsFinishTransaction {
                        // Deliver content from server, then:
                        SwiftyStoreKit.finishTransaction(purchase.transaction)
                    }
                // Unlock content
                case .failed, .purchasing, .deferred:
                    break // do nothing
                }
            }
        }
        
        let userDefaults = UserDefaults.standard
        if let postParsedData = userDefaults.object(forKey: "myPurchasedCategories") as? [String:Bool] {
            myPurchasedCategories = postParsedData
        }
        
        for (key, value) in myPurchasedCategories {
            print("\(key): \(value)")
        }
        
        return true
    }
    
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
        
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        let userDefaults = UserDefaults.standard
        userDefaults.set(myPurchasedCategories, forKey: "myPurchasedCategories")
        saveData(withData: productPrices, id: "productPrices")
        
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
        
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        let userDefaults = UserDefaults.standard
        userDefaults.set(myPurchasedCategories, forKey: "myPurchasedCategories")
        saveData(withData: productPrices, id: "productPrices")
        
    }
}


// FACEBOOK SIGN IN
// --------------------------------------------------------
/*
 func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
 if let error = error {
 print(error.localizedDescription)
 return
 }
 let credential = FacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
 print("Got Facebook credential: \(credential)")
 
 Auth.auth().signInAndRetrieveData(with: credential) { (user, error) in
 if let error = error {
 print(error)
 return
 }
 // User is signed in
 guard let currentUser = user?.user else {return}
 print("Successfully logging into Firebase with Facebook", currentUser.displayName!, currentUser.email!, currentUser.uid)
 
 let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
 let initialViewController : UIViewController = storyboard.instantiateViewController(withIdentifier: "MainMenu") as UIViewController
 self.window = UIWindow(frame: UIScreen.main.bounds)
 self.window?.rootViewController = initialViewController
 self.window?.makeKeyAndVisible()
 }
 }
 */
// --------------------------------------------------------


// GOOGLE SIGN IN
// --------------------------------------------------------
/*func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
 
 
 
 if let error = error {
 print("Failed to log in to Google.", error.localizedDescription)
 return
 
 }
 print("User successfully signed into Google", user as Any)
 
 
 guard let idToken = user.authentication.idToken else { return }
 guard let accessToken = user.authentication.accessToken else { return }
 let credentials = GoogleAuthProvider.credential(withIDToken: idToken, accessToken: accessToken)
 
 Auth.auth().signInAndRetrieveData(with: credentials) { (user, error) in
 if let err = error {
 print("Failed to create a Firebase User with Google account", err)
 }
 
 guard let currentUser = user?.user else {return}
 self.ref = Database.database().reference()
 print("Successfully logging into Firebase with Google", currentUser.displayName!, currentUser.email!, currentUser.uid)
 
 self.ref.child("In-App Purchases").observeSingleEvent(of: .value, with: { (snapshot) in
 print(snapshot)
 if !snapshot.hasChild(Auth.auth().currentUser!.uid) {
 self.ref.child("In-App Purchases").child(currentUser.uid).setValue(myPurchasedCategories)
 }
 })
 self.ref.child("In-App Purchases").child("\(Auth.auth().currentUser!.uid)").observe(.value, with: { (snapshot) in
 for item in myPurchasedCategories {
 if snapshot.hasChild(item.key) {
 if let childSnapshot = snapshot.childSnapshot(forPath: item.key) as? DataSnapshot {
 if let listDict = childSnapshot.value as? [String: Bool] {
 myPurchasedCategories[item.key] = listDict[item.key]
 print(listDict)
 }
 }
 } else {
 self.ref.child("In-App Purchases").child(currentUser.uid).child(item.key).setValue(item.value)
 }
 }
 })
 
 let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
 let initialViewController : UIViewController = storyboard.instantiateViewController(withIdentifier: "Startup") as UIViewController
 self.window = UIWindow(frame: UIScreen.main.bounds)
 self.window?.rootViewController = initialViewController
 self.window?.makeKeyAndVisible()
 
 }
 }
 
 func sign(_ signIn: GIDSignIn!, didDisconnectWith user: GIDGoogleUser!, withError error: Error!) {
 if let error = error {
 print(error)
 }
 }
 */
// --------------------------------------------------------


/*func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
 _ = FBSDKApplicationDelegate.sharedInstance()?.application(app, open: url, sourceApplication: (options[UIApplication.OpenURLOptionsKey.sourceApplication] as! String), annotation: options[UIApplication.OpenURLOptionsKey.annotation]) // used to be "let handled = "
 
 //return GIDSignIn.sharedInstance().handle(url, sourceApplication:options[UIApplication.OpenURLOptionsKey.sourceApplication] as? String, annotation: options[UIApplication.OpenURLOptionsKey.annotation])
 }*/

// --------------------------------------------------------
