//
//  geoStatSub.swift
//  GeoGuru
//
//  Created by Pranav Ramesh on 5/24/19.
//  Copyright © 2019 GeoGuru. All rights reserved.
//

import UIKit

var quizCategory = String()
var quizList = [[String()]]

class geoStatSub: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var selectedStats = String()
    var statInfo = [[String()]]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(statInfo.count)
        return statInfo.count
    }
    
    @IBAction func takeQuiz(_ sender: UIBarButtonItem) {
        quizCategory = selectedStats
        quizList = statInfo
        NotificationCenter.default.post(name: NSNotification.Name("takeQuiz"), object: nil)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "statSub", for: indexPath) as! statSubCell
        
        print(statInfo[indexPath.row][0])
        cell.factStatement.text = statInfo[indexPath.row][0]
        cell.factDescription.text = statInfo[indexPath.row][1]
        
        return cell
    }
    
    @IBOutlet var tableView: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        switch selectedStats {
        case "Countries and Continents": statInfo = statCategories().countriesContinents
        case "High and Low Points": statInfo = statCategories().countriesContinents
        case "Length and Size of Landforms": statInfo = statCategories().lengthLandforms
        case "Length and Size of Landmarks": statInfo = statCategories().lengthLandmarks
        case "Temperature Extremes": statInfo = statCategories().tempExtremes
        case "North and South": statInfo = statCategories().northSouth
        default: print("No selected stats."); break
        }
        do {
            tableView.reloadData()
        }
        if #available(iOS 13.0, *) {
            // Always adopt a light interface style.
            overrideUserInterfaceStyle = .light
        }
    }
    

}
