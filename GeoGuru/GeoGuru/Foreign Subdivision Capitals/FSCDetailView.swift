//
//  FSCDetailView.swift
//  GeoGuru
//
//  Created by Pranav Ramesh on 9/15/19.
//  Copyright © 2019 GeoGuru. All rights reserved.
//

import UIKit

class FSCDetailView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var info: [[String]] = []
    var category = String()
    @IBOutlet weak var navBar: UINavigationBar!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return info.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FSCDetailCell", for: indexPath) as! FSCDetailCell
        cell.place.text = info[indexPath.row][0]
        cell.capital.text = info[indexPath.row][1]
        return cell
    }
    
    @IBAction func goBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = category
        self.navBar.topItem?.title = category
        switch category {
        case "Afghanistan": info = Capitals().afghanistanCapitals
        case "Argentina": info = Capitals().argentinaCapitals
        case "Australia": info = Capitals().australiaCapitals
        case "Bangladesh": info = Capitals().bangladeshCapitals
        case "Brazil": info = Capitals().brazilCapitals
        case "Canada": info = Capitals().canadaCapitals
        case "Chile": info = Capitals().chileCapitals
        case "China": info = Capitals().chinaCapitals
        case "Cuba": info = Capitals().cubaCapitals
        case "Democratic Republic of the Congo": info = Capitals().democraticrepublicofthecongoCapitals
        case "Ecuador": info = Capitals().ethiopiaCapitals
        case "Ethiopia": info = Capitals().ethiopiaCapitals
        case "France": info = Capitals().franceCapitals
        case "Germany": info = Capitals().germanyCapitals
        case "Guatemala": info = Capitals().guatemalaCapitals
        case "Italy": info = Capitals().italyCapitals
        case "India": info = Capitals().indiaCapitals
        case "Indonesia": info = Capitals().indonesiaCapitals
        case "Iran": info = Capitals().iranCapitals
        case "Japan": info = Capitals().japanCapitals
        case "Kazakhstan": info = Capitals().kazakhstanCapitals
        case "Malaysia": info = Capitals().malaysiaCapitals
        case "Mexico": info = Capitals().mexicoCapitals
        case "Myanmar": info = Capitals().myanmarCapitals
        case "Nigeria": info = Capitals().nigeriaCapitals
        case "Pakistan": info = Capitals().pakistanCapitals
        case "Peru": info = Capitals().peruCapitals
        case "Russia": info = Capitals().russiaCapitals
        case "Saudi Arabia": info = Capitals().saudiArabiaCapitals
        case "South Africa": info = Capitals().southafricaCapitals
        case "Spain": info = Capitals().spainCapitals
        case "Sri Lanka": info = Capitals().srilankaCapitals
        case "Tanzania": info = Capitals().tanzaniaCapitals
        case "United States": info = Capitals().unitedstatesCapitals
        case "Uzbekistan": info = Capitals().uzbekistanCapitals
        case "Venezuela": info = Capitals().venezuelaCapitals
        default:
            break
        }
    }
}

class FSCDetailCell: UITableViewCell {
    @IBOutlet weak var place: UILabel!
    @IBOutlet weak var capital: UILabel!
}
