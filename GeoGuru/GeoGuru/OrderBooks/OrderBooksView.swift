//
//  OrderBooksView.swift
//  GeoGuru
//
//  Created by Pranav Ramesh on 10/28/18.
//  Copyright © 2018 GeoGuru. All rights reserved.
//

import UIKit
import SwiftyStoreKit

func saveData(withData data: Any, id: String) {
    let userDefaults = UserDefaults.standard
    userDefaults.set(data, forKey: id)
}

var myPurchasedCategories: Dictionary<String, Bool> = [
    "United States": true,
    "Country Capitals": true,
    "U.S. State Capitals": true,
    "North America": false,
    "South America": false,
    "Europe": false,
    "Asia": false,
    "Africa": false,
    "Australia": false,
    "Antarctica": true,
    "Physical Geography": false,
    "Cultural Geography": false,
    "Economic Geography": false,
    "Political Geography": false,
    "Historical Geography": false,
    "Assorted": false,
    "Multiple Choice": false
]

var productNames: [String] = [
    "Africa",
    "Asia",
    "Assorted Geography",
    "Australia",
    "Continent Package",
    "Cultural Geography",
    "Economic Geography",
    "Europe",
    "Geographic Topic Package",
    "Multiple Choice",
    "North America",
    "Physical Geography",
    "Political/Historical Geography",
    "South America"
]

var productIDs: [String] = [
    "africa5",
    "asia4",
    "assorted10",
    "australia6",
    "continent15",
    "cultGeo41",
    "econGeo9",
    "europe33",
    "geoTopic177",
    "multChoice11",
    "northamerica1",
    "physGeo31",
    "polHistGeo",
    "southAmerica2"
]

var productPrices: [String: String] = [
    "africa5":"",
    "asia4":"",
    "assorted10":"",
    "australia6":"",
    "continent15":"",
    "cultGeo41":"",
    "econGeo9":"",
    "europe33":"",
    "geoTopic": "",
    "multChoice11":"",
    "northamerica1":"",
    "physGeo31":"",
    "polHistGeo":"",
    "southAmerica2": ""
    
]

class purchaseView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var everythingPurchased: UILabel!
    
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    @IBOutlet var shopLogo: UILabel!
    @IBOutlet var shopTable: UITableView!
    let sharedSecret = "52c747b3b94c46a69c5549669a2dede3"
    lazy var products = [String()]
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        shopLogo.layer.masksToBounds = true; shopLogo.layer.cornerRadius = shopLogo.frame.height / 2
        
        let userDefaults = UserDefaults.standard
        if let postParsedData = userDefaults.object(forKey: "productIDs") as? [String] {
            productIDs  = postParsedData
        }
//        if let postParsedData = userDefaults.object(forKey: "productPrices") as? [String] {
//            productPrices = postParsedData
//        }
        if let postParsedData = userDefaults.object(forKey: "productNames") as? [String] {
            productNames = postParsedData
        }
        
        for productID in productIDs {
//            print(productID)
            SwiftyStoreKit.retrieveProductsInfo([productID]) { result in
                if let product = result.retrievedProducts.first {
                    let priceString = product.localizedPrice!
                    print("Product: \(product.localizedDescription), price: \(priceString)")
//                    if self.productPrices.count < self.productNames.count {
//                        self.productPrices.append(priceString)
//                    }
//                    self.shopTable.reloadData()
                }
                else if let invalidProductId = result.invalidProductIDs.first {
                    print("Invalid product identifier: \(invalidProductId)")
                }
                else {
                    print("Error: \(result.error)")
                }
            }
            verifyPurchase(withID: productID, sharedSecret: sharedSecret)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        everythingPurchased.isHidden = false
        for item in myPurchasedCategories {
            if item.value == false {
                everythingPurchased.isHidden = true
                break
            }
        }
        activityIndicator.isHidden = true
    }
    
    @IBAction func restorePurchases(_ sender: UIButton) {
        activityIndicator.isHidden = false
        SwiftyStoreKit.restorePurchases(atomically: true) { results in
            var message = ""
            if results.restoreFailedPurchases.count > 0 {
                print("Restore Failed: \(results.restoreFailedPurchases)")
                message = "Restore Failed"
            }
            else if results.restoredPurchases.count > 0 {
                print("Restore Success: \(results.restoredPurchases)")
                let purchases = results.restoredPurchases
                for i in 0..<purchases.count {
                    print(purchases[i])
                    self.unlockCategory(withPurchaseID: purchases[i].productId)
                }
                
                message = "Restore Success"
            }
            else {
                print("Nothing to Restore")
                message = "Nothing to Restore"
            }
            let alert = UIAlertController(title: message, message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            self.activityIndicator.isHidden = true
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productNames.count
    }
    
    let imageGroup: [UIImage] = [
        UIImage(named: "blue-purple.png")!,
        UIImage(named: "green-blue.png")!,
        UIImage(named: "purple-pink.png")!,
        UIImage(named: "red-orange.png")!,
        UIImage(named: "red-pink.png")!,
        UIImage(named: "yellow-orange.png")!
    ]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        (segue as! OHCircleSegue).circleOrigin = returnHome.center
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "purchaseCell", for: indexPath) as! purchaseTableCell
        
        cell.purchaseName.text = productNames[indexPath.row]
        cell.localizedPrice.text = productPrices[productIDs[indexPath.row]]
        
        cell.backImage.layer.masksToBounds = true
        cell.backImage.layer.cornerRadius = 15
        
        var numQuestions = ""
        
        switch productIDs[indexPath.row] {
        case "africa5": cell.backImage.image = UIImage(named: "africa"); numQuestions = "659"
        case "asia4": cell.backImage.image = UIImage(named: "asia"); numQuestions = "1337"
        case "assorted10": cell.backImage.image = UIImage(named: "assorted"); numQuestions = "327"
        case "australia6": cell.backImage.image = UIImage(named: "australia"); numQuestions = "299"
        case "continent15": cell.backImage.image = UIImage(named: "continents"); numQuestions = "3756"
        case "cultGeo41": cell.backImage.image = UIImage(named: "cultural"); numQuestions = "101"
        case "econGeo9": cell.backImage.image = UIImage(named: "economic"); numQuestions = "103"
        case "europe33": cell.backImage.image = UIImage(named: "europe"); numQuestions = "610"
        case "geoTopic177": cell.backImage.image = UIImage(named: "geoTopic"); numQuestions = "1135"
        case "multChoice11": cell.backImage.image = UIImage(named: "unitedStates"); numQuestions = "325"
        case "northamerica1": cell.backImage.image = UIImage(named: "northAmerica"); numQuestions = "482"
        case "physGeo31": cell.backImage.image = UIImage(named: "physical"); numQuestions = "189"
        case "polHistGeo": cell.backImage.image = UIImage(named: "polHist"); numQuestions = "90"
        case "southAmerica2": cell.backImage.image = UIImage(named: "southAmerica"); numQuestions = "369"
        default: print("Something went wrong with applying localized prices to the table cell"); break
        }
        
        cell.numQuestions.text = "\(numQuestions) Questions"
        
        return cell
    }
    
    @IBOutlet var returnHome: UIButton!
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        purchaseProduct(withID: productIDs[indexPath.row])
    }
    
    func verifyPurchase(withID id: String, sharedSecret: String) {
        activityIndicator.isHidden = false
        let appleValidator = AppleReceiptValidator(service: .production, sharedSecret: sharedSecret)
        SwiftyStoreKit.verifyReceipt(using: appleValidator) { result in
            switch result {
            case .success(let receipt):
                let productId = id
                // Verify the purchase of Consumable or NonConsumable
                let purchaseResult = SwiftyStoreKit.verifyPurchase(
                    productId: productId,
                    inReceipt: receipt)
                
                switch purchaseResult {
                case .purchased(let receiptItem):
                    print("\(productId) is purchased: \(receiptItem)")
                case .notPurchased:
                    print("The user has never purchased \(productId)")
                }
            case .error(let error):
                print("Receipt verification failed: \(error)")
            }
            self.activityIndicator.isHidden = true
        }
    }
    
    func purchaseProduct(withID id: String) {
        activityIndicator.isHidden = false
        SwiftyStoreKit.retrieveProductsInfo([id]) { result in
            if let product = result.retrievedProducts.first {
                SwiftyStoreKit.purchaseProduct(product, quantity: 1, atomically: true) { result in
                    switch result {
                    case .success(let product):
                        // fetch content from your server, then:
                        if product.needsFinishTransaction {
                            SwiftyStoreKit.finishTransaction(product.transaction)
                        }
                        print("Purchase Success: \(product.product.localizedTitle): \(product.productId)")
                        self.unlockCategory(withPurchaseID: id)
                    case .error(let error):
                        switch error.code {
                        case .unknown: print("Unknown error. Please contact support")
                        case .clientInvalid: print("Not allowed to make the payment")
                        case .paymentCancelled: print ("Payment was cancelled.")
                        case .paymentInvalid: print("The purchase identifier was invalid")
                        case .paymentNotAllowed: print("The device is not allowed to make the payment")
                        case .storeProductNotAvailable: print("The product is not available in the current storefront")
                        case .cloudServicePermissionDenied: print("Access to cloud service information is not allowed")
                        case .cloudServiceNetworkConnectionFailed: print("Could not connect to the network")
                        case .cloudServiceRevoked: print("User has revoked permission to use this cloud service")
                        default: print((error as NSError).localizedDescription)
                        }
                        self.activityIndicator.isHidden = true
                    }
                }
            }
        }
    }
    
    func unlockCategory(withPurchaseID id: String) {
        switch id {
        case "africa5": myPurchasedCategories["Africa"] = true; removeProduct(withID: "africa5")
        case "asia4": myPurchasedCategories["Asia"] = true; removeProduct(withID: "asia4")
        case "assorted10": myPurchasedCategories["Assorted"] = true; removeProduct(withID: "assorted10")
        case "australia6": myPurchasedCategories["Australia"] = true; removeProduct(withID: "australia6")
        case "continent15":
            myPurchasedCategories["South America"] = true
            myPurchasedCategories["North America"] = true
            myPurchasedCategories["Europe"] = true
            myPurchasedCategories["Africa"] = true
            myPurchasedCategories["Asia"] = true
            myPurchasedCategories["Australia"] = true
            removeProduct(withID: "southAmerica2")
            removeProduct(withID: "northamerica1")
            removeProduct(withID: "europe33")
            removeProduct(withID: "africa5")
            removeProduct(withID: "asia4")
            removeProduct(withID: "australia6")
            removeProduct(withID: "continent15")
        case "cultGeo41": myPurchasedCategories["Cultural Geography"] = true; removeProduct(withID: "cultGeo41")
        case "econGeo9": myPurchasedCategories["Economic Geography"] = true; removeProduct(withID: "econGeo9")
        case "europe33": myPurchasedCategories["Europe"] = true; removeProduct(withID: "europe33")
        case "multChoice11": myPurchasedCategories["Multiple Choice"] = true; removeProduct(withID: "multChoice11")
        case "northamerica1": myPurchasedCategories["North America"] = true; removeProduct(withID: "northamerica1")
        case "physGeo31": myPurchasedCategories["Physical Geography"] = true; removeProduct(withID: "physGeo31")
        case "polHistGeo": myPurchasedCategories["Political Geography"] = true; myPurchasedCategories["Historical Geography"] = true; removeProduct(withID: "polHistGeo")
        case "southAmerica2": myPurchasedCategories["South America"] = true; removeProduct(withID: "southAmerica2")
        default: break
        }
        
        saveData(withData: myPurchasedCategories, id: "myPurchasedCategories")
        shopTable.reloadData()
        everythingPurchased.isHidden = false
        for item in myPurchasedCategories {
            if item.value == false {
                everythingPurchased.isHidden = true
                break
            }
        }
        activityIndicator.isHidden = true
    }
    
    func removeProduct(withID id: String) {
        print("Current productIDs: \(productIDs)")
        print (productIDs.count-1)
        for i in 0..<productIDs.count {
            if productIDs[i] == id {
                productIDs.remove(at: i)
//                productPrices.remove(at: i)
                productNames.remove(at: i)
                break
            }
        }
        saveData(withData: productIDs, id: "productIDs")
//        saveData(withData: productPrices, id: "productPrices")
        saveData(withData: productNames, id: "productNames")
    }
    
}


///var myPurchasedCategories: Dictionary<String, Bool> = [
///    "United States": true,
///    "Country Capitals": true,
///    "U.S. State Capitals": true,
///    "North America": false,
///    "South America": false,
///    "Europe": false,
///    "Asia": false,
///    "Africa": false,
///    "Australia": false,
///    "Antarctica": true,
///    "Physical Geography": false,
///    "Cultural Geography": false,
///    "Economic Geography": false,
///    "Political Geography": false,
///    "Historical Geography": false,
///    "Assorted": false,
///    "Multiple Choice": false
///]
///
///let productNames: [String] = [
///    "Africa",
///    "Asia",
///    "Assorted Geography",
///    "Australia",
///    "Continent Package",
///    "Cultural Geography",
///    "Economic Geography",
///    "Europe",
///    "Multiple Choice",
///    "North America",
///    "Physical Geography",
///    "Political/Historical Geography",
///    "South America"
///]
///
///let productIDs: [String] = [
///    "africa5",
///    "asia4",
///    "assorted10",
///    "australia6",
///    "continent15",
///    "cultGeo41",
///    "econGeo9",
///    "europe33",
///    "multChoice11",
///    "northamerica1",
///    "physGeo31",
///    "polHistGeo",
///    "southAmerica2"
///]
