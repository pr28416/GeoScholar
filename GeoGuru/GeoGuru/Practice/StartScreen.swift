//
//  StartScreen.swift
//  GeoGuru
//
//  Created by Pranav and Keshav Ramesh on 9/3/18.
//  Copyright © 2018 GeoGuru. All rights reserved.
//

import UIKit
import Firebase
import PCLBlurEffectAlert
import Alamofire

class StartScreen: UIViewController/*, UITableViewDelegate, UITableViewDataSource*/, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var databaseHandler = DatabaseHandle()
    var ref: DatabaseReference!
    var canEnterPractice = false
    
    @IBOutlet var databaseSyncIndicator: UIActivityIndicatorView!
    @IBOutlet var databaseSyncInfo: UILabel!
    @IBOutlet var databaseStack: UIStackView!
    
    
    
    
    //@IBOutlet var tableView: UITableView!
    @IBAction func returnPressed(_ sender: Any) {
//        self.navigationController?.popViewController(animated: true)

    }
    
    var contentCollection = [[[String]]]()
    
    let continents = ["United States", "Country Capitals", "U.S. State Capitals", "North America", "South America", "Europe", "Asia", "Africa", "Australia", "Antarctica", "Physical Geography", "Cultural Geography", "Economic Geography", "Political Geography", "Historical Geography", "Assorted", "Multiple Choice"]
    
    var sendContinent: String = "None"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowModeSelect" {
            let modeController = segue.destination as! ModeSelect
            modeController.sendName = sendContinent
            let userDefaults = UserDefaults.standard
            if let postParsedData = userDefaults.object(forKey: "contentCollection") as? [[[String]]] {
                contentCollection = postParsedData
                print("Preparing for segue - Question data from local files is being scanned in. Original contentCollection length: \(contentCollection.count)")
            }
            modeController.contentCollection = contentCollection
            
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if usCapitals.isEmpty {
            databaseStack.isHidden = false
            databaseSyncIndicator.startAnimating()
            databaseSyncInfo.isHidden = false
            databaseSyncInfo.isEnabled = true
        }
        
        NetworkReachabilityManager()!.startListening()
        let userDefaults = UserDefaults.standard
        if Connectivity.isConnectedToInternet {
            print("\nYES - Internet is available. Starting upload from database\n")
            NetworkReachabilityManager()!.stopListening()
            
            
        } else {
            if let postParsedData = userDefaults.object(forKey: "contentCollection") as? [[[String]]] {
                print("Offline")
                print("Before database upload: Question data from local files is being scanned in. Original contentCollection length: \(contentCollection.count)")
                contentCollection = postParsedData
                canEnterPractice = true
            }
        }
        
        if let postParsedData = userDefaults.object(forKey: "contentCollection") as? [[[String]]] {
            print("Before database upload: Question data from local files is being scanned in. Original contentCollection length: \(contentCollection.count)")
            contentCollection = postParsedData
        }
        
        ref = Database.database().reference()
        
        if contentCollection.count >= 17 {
            canEnterPractice = true
        }
        
        //        print("\n\n")
        var i = 1
        databaseHandler = ref.child("Questions").observe(.childAdded, with: { (data) in
            let name: [[String]] = (data.value as? [[String]])!
            switch i {
            case 1:
                Africa = name
                print("Africa Success")
            case 2:
                Antarctica = name
                print("Antarctica Success")
            case 3:
                Asia = name
                print("Asia Success")
            case 4:
                Australia = name
                print("Australia Success")
            case 5:
                CulturalGeography = name
                print("CG Success")
            case 6:
                EconomicGeography = name
                print("EG Success")
            case 7:
                Europe = name
                print("Europe Success")
            case 8:
                HistoricalGeography = name
                print("HG Success")
            case 9:
                Miscellaneous = name
                print("Misc Success")
            case 10:
                MultipleChoiceQuestions = name
                print("MC Success")
            case 11:
                NorthAmerica = name
                print("NA Success")
            case 12:
                PhysicalGeography = name
                print("PhyG Success")
            case 13:
                PoliticalGeography = name
                print("PolG Success")
            case 14:
                SouthAmerica = name
                print("SA Success")
            case 15:
                UnitedStates = name
                print("US Success")
            case 16:
                countryCapitals = name
                print("countryCap Success")
            case 17:
                usCapitals = name
                print("usCap Success")
                
                print(Africa.count, Antarctica.count, Asia.count)
                self.contentCollection = [Africa, Antarctica, Asia, Australia, CulturalGeography, EconomicGeography, Europe, HistoricalGeography, Miscellaneous, MultipleChoiceQuestions, NorthAmerica, PhysicalGeography, PoliticalGeography, SouthAmerica, UnitedStates, countryCapitals, usCapitals]
                print("\nSaving contentCollection with new uploaded data. contentCollection length: \(self.contentCollection.count), \(self.contentCollection[0].count), \(self.contentCollection[1].count), \(self.contentCollection[16].count)\n")
                saveData(withData: self.contentCollection, id: "contentCollection")
            default:
                print("Could not register: \(i)")
            }
            
            i += 1
            
            if i == 17 {
                self.databaseStack.isHidden = true
                self.databaseSyncIndicator.hidesWhenStopped = true
                self.databaseSyncIndicator.stopAnimating()
                self.databaseSyncInfo.isHidden = true
                self.databaseSyncInfo.isEnabled = false
                self.canEnterPractice = true
                
            }
            
            
        })
        
    }
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var categoryLock: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.layer.masksToBounds = true
        self.navigationController?.navigationBar.clipsToBounds = true
        self.navigationController?.navigationBar.layer.cornerRadius = 10
        self.navigationController?.navigationBar.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return continents.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! categoryCollectionCell
        
        if myPurchasedCategories[continents[indexPath.row]] == false {
            cell.categoryLock.isHidden = false
        } else {
            cell.categoryLock.isHidden = true
        }
        
        cell.categoryName.text = continents[indexPath.row]
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 10
        cell.backImage.layer.masksToBounds = true
        cell.backImage.layer.cornerRadius = 15
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if myPurchasedCategories[continents[indexPath.row]] == false {
            let noPurchaseAlert = PCLBlurEffectAlertController(title: "Not purchased", message: "You have not unlocked this category yet. You can purchase this category in the shop.", effect: UIBlurEffect(style: .dark), style: .alertVertical)
            
            let goBackButton = PCLBlurEffectAlertAction(title: "Return to Practice", style: .cancel, handler: nil)
            let purchaseButton = PCLBlurEffectAlertAction(title: "Go to shop", style: .default) { (action) in
                self.performSegue(withIdentifier: "purchaseCategory", sender: nil)
            }
            let freeTrialButton = PCLBlurEffectAlertAction(title: "10 free questions", style: .default) { (action) in
                if self.canEnterPractice == false {
                    let noConnectivityAlert = PCLBlurEffectAlertController(title: "No connectivity", message: "We have encountered an error. GeoScholar is still attempting to receive questions from the server. Try again later.", effect: UIBlurEffect(style: .dark), style: .alert)
                    
                    let goBackButton = PCLBlurEffectAlertAction(title: "Return to Practice", style: .cancel, handler: nil)
                    
                    noConnectivityAlert.configure(titleColor: UIColor.white)
                    noConnectivityAlert.configure(messageColor: UIColor.white)
                    noConnectivityAlert.configure(cornerRadius: 20)
                    
                    noConnectivityAlert.addAction(goBackButton)
                    self.present(noConnectivityAlert, animated: true)
                } else {
                    let cell = self.collectionView(collectionView, cellForItemAt: indexPath) as! categoryCollectionCell
                    self.sendContinent = cell.categoryName.text!
                    print(self.sendContinent)
                    self.performSegue(withIdentifier: "ShowModeSelect", sender: self.sendContinent)
                }
            }
            
            noPurchaseAlert.configure(titleColor: UIColor.white)
            noPurchaseAlert.configure(messageColor: UIColor.white)
            noPurchaseAlert.configure(cornerRadius: 20)
            
            noPurchaseAlert.addAction(goBackButton)
//            noPurchaseAlert.addAction(freeTrialButton)
            noPurchaseAlert.addAction(purchaseButton)
            
            present(noPurchaseAlert, animated: true, completion: nil)
        } else {
            if canEnterPractice == false {
                let noConnectivityAlert = PCLBlurEffectAlertController(title: "No connectivity", message: "We have encountered an error. GeoScholar is still attempting to receive questions from the server. Try again later.", effect: UIBlurEffect(style: .dark), style: .alert)

                let goBackButton = PCLBlurEffectAlertAction(title: "Return to Practice", style: .cancel, handler: nil)

                noConnectivityAlert.configure(titleColor: UIColor.white)
                noConnectivityAlert.configure(messageColor: UIColor.white)
                noConnectivityAlert.configure(cornerRadius: 20)

                noConnectivityAlert.addAction(goBackButton)
                self.present(noConnectivityAlert, animated: true)
            } else {
                let cell = self.collectionView(collectionView, cellForItemAt: indexPath) as! categoryCollectionCell
                sendContinent = cell.categoryName.text!
                print(sendContinent)
                performSegue(withIdentifier: "ShowModeSelect", sender: sendContinent)
            }
        }
    }
    
}
