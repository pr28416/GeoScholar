//
//  ForeignSubCapitalsMain.swift
//  GeoGuru
//
//  Created by Pranav Ramesh on 9/1/19.
//  Copyright © 2019 GeoGuru. All rights reserved.
//

import UIKit

class ForeignSubCapitalsMain: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let categories = [
        "Afghanistan",
        "Argentina",
        "Australia",
        "Bangladesh",
        "Brazil",
        "Canada",
        "Chile",
        "China",
        "Cuba",
        "Democratic Republic of the Congo",
        "Ecuador",
        "Ethiopia",
        "France",
        "Germany",
        "Guatemala",
        "Italy",
        "India",
        "Indonesia",
        "Iran",
        "Japan",
        "Kazakhstan",
        "Malaysia",
        "Mexico",
        "Myanmar",
        "Nigeria",
        "Pakistan",
        "Peru",
        "Russia",
        "Saudi Arabia",
        "South Africa",
        "Spain",
        "Sri Lanka",
        "Tanzania",
        "United States",
        "Uzbekistan",
        "Venezuela"
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "subdivisionCell", for: indexPath)
        cell.textLabel!.text = categories[indexPath.row]
        cell.selectionStyle = .blue
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FSCDetailView" {
            let VC = segue.destination as! FSCDetailView
            VC.category = categories[ tableView.indexPathForSelectedRow!.row]
            tableView.deselectRow(at: tableView.indexPathForSelectedRow!, animated: true)
        }
    }
    @IBOutlet weak var navBar: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navBar.setBackgroundImage(UIImage(), for: .any, barMetrics: .default)
        navBar.shadowImage = UIImage()
    }
}
