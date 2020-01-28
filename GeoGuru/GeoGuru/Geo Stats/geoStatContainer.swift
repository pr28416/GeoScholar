//
//  geoStatContainer.swift
//  GeoGuru
//
//  Created by Pranav Ramesh on 5/24/19.
//  Copyright © 2019 GeoGuru. All rights reserved.
//

import UIKit

class geoStatContainer: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let categories = ["Countries and Continents", "High and Low Points", "Length and Size of Landforms", "Length and Size of Landmarks", "Temperature Extremes", "North and South"]
    
    var selectedStats = String()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "statMain", for: indexPath)
        cell.textLabel?.text = categories[indexPath.row]
        return cell
    }
    
    //    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //
    //    }
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        selectedStats = categories[indexPath.row]
        return indexPath
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showStats" {
            let VC = segue.destination as! geoStatSub
            VC.selectedStats = selectedStats
            print ("\n\(selectedStats)")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if #available(iOS 13.0, *) {
            // Always adopt a light interface style.
            overrideUserInterfaceStyle = .light
        }
        self.navigationController?.navigationItem.backBarButtonItem?.tintColor = UIColor.purple
        self.navigationController?.navigationItem.leftBarButtonItem?.tintColor = UIColor.purple
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        UINavigationBar.appearance().tintColor = UIColor.purple
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        UINavigationBar.appearance().tintColor = UIColor.white
    }
    
}
