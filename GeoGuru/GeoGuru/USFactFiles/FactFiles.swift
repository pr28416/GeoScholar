//
//  FactFiles.swift
//  GeoGuru
//
//  Created by Pranav and Keshav Ramesh on 9/22/18.
//  Copyright © 2018 GeoGuru. All rights reserved.
//

import UIKit

class FactMain: UIViewController {
    @IBOutlet weak var fileView: UIView!
    @IBOutlet weak var tableView: UIView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.isHidden = true
        fileView.isHidden = false
        segmentControl.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.black], for: UIControlState.selected)
        segmentControl.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.white], for: UIControlState.normal)
    }
    
    var stateName = ""
    
    @IBAction func changedView(_ sender: Any) {
        if segmentControl.selectedSegmentIndex == 0 {
            tableView.isHidden = true
            fileView.isHidden = false
        } else {
            tableView.isHidden = false
            fileView.isHidden = true
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showFact" {
            let modeController = segue.destination as! Factoid
            modeController.stateName = stateName
        }
    }
}

class FactTable: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let facts = [
        ["Alabama", "Yellowhammer", "Heart of Dixie, Yellowhammer State, Cotton State", "Longleaf pine"],
        ["Alaska", "Willow ptarmigan", "The Last Frontier", "Sitka spruce"],
        ["Arizona", "Cactus wren", "Grand Canyon State, Copper State", "Blue palo verde"],
        ["Arkansas", "Northern mockingbird", "Natural State, Hot Springs State", "Loblolly pine"],
        ["California", "California quail", "Golden State", "Coast redwood, Giant sequoia"],
        ["Colorado", "Lark bunting", "Centennial State", "Colorado blue spruce"],
        ["Connecticut", "American robin", "Constitution State, Nutmeg State", "White oak"],
        ["Delaware", "Delaware blue hen", "First State, Blue Hen State", "American holly"],
        ["Florida", "Northern mockingbird", "Sunshine State, Orange State", "Sabal palm"],
        ["Georgia", "Brown thrasher", "Peach State, Goober State, Empire State of the South", "Southern live oak"],
        ["Hawaii", "Hawaiian goose (Nene)", "Aloha State, Paradise of the Pacific", "Candlenut tree"],
        ["Idaho", "Mountain bluebird", "Gem State", "Western white pine"],
        ["Illinois", "Northern cardinal", "Prairie State, Land of Lincoln", "White oak"],
        ["Indiana", "Northern cardinal", "Hoosier State", "Tulip tree"],
        ["Iowa", "Eastern goldfinch", "Hawkeye State", "Bur oak"],
        ["Kansas", "Western meadowlark", "Sunflower State", "Eastern cottonwood"],
        ["Kentucky", "Northern cardinal", "Bluegrass State", "Tulip tree"],
        ["Louisiana", "Brown pelican", "Pelican State, Sportsman’s Paradise", "Bald cypress"],
        ["Maine", "Black-capped chickadee", "Pine Tree State, Vacationland", "Eastern white pine"],
        ["Maryland", "Baltimore oriole", "Old Line State, Chesapeake State", "White oak"],
        ["Massachusetts", "Black-capped chickadee", "Bay State, Old Colony State, Spirit of America", "American elm"],
        ["Michigan", "American robin", "Great Lakes State, Wolverine State", "Eastern white pine"],
        ["Minnesota", "Common loon", "North Star State, Land of 10,000 Lakes", "Red pine"],
        ["Mississippi", "Northern mockingbird", "Magnolia State", "Southern magnolia"],
        ["Missouri", "Eastern bluebird", "Show-Me State", "Flowering dogwood"],
        ["Montana", "Western meadowlark", "Treasure State", "Ponderosa pine"],
        ["Nebraska", "Western meadowlark", "Cornhusker State", "Eastern cottonwood"],
        ["Nevada", "Mountain bluebird", "Silver State", "Single-leaf pinyon, Great Basin bristlecone pine"],
        ["New Hampshire", "Purple finch", "Granite State", "American white birch"],
        ["New Jersey", "Eastern goldfinch", "Garden State", "Northern red oak"],
        ["New Mexico", "Roadrunner", "Land of Enchantment", "Pinon pine"],
        ["New York", "Eastern bluebird", "Empire State", "Sugar maple"],
        ["North Carolina", "Northern cardinal", "Tar Heel State", "Pine"],
        ["North Dakota", "Western meadowlark", "Peace Garden State", "American elm"],
        ["Ohio", "Northern cardinal", "Buckeye State, Birthplace of Aviation", "Ohio buckeye"],
        ["Oklahoma", "Scissor-tailed flycatcher", "Sooner State", "Eastern redbud"],
        ["Oregon", "Western meadowlark", "Beaver State", "Douglas fir"],
        ["Pennsylvania", "Ruffed goose", "Keystone State", "Eastern hemlock"],
        ["Rhode Island", "Rhode Island red", "Ocean State", "Red maple"],
        ["South Carolina", "Carolina wren", "Palmetto State", "Sabal palm"],
        ["South Dakota", "Ring-necked pheasant", "Mount Rushmore State", "Black Hills spruce"],
        ["Tennessee", "Northern mockingbird", "Volunteer State", "Tulip tree"],
        ["Texas", "Northern mockingbird", "Lone Star State", "Pecan"],
        ["Utah", "California gull", "Beehive State", "Quaking aspen"],
        ["Vermont", "Hermit thrush", "Green Mountain State", "Sugar maple"],
        ["Virginia", "Northern cardinal", "The Old Dominion", "Flowering dogwood"],
        ["Washington", "Willow goldfinch", "Evergreen State", "Western hemlock"],
        ["West Virginia", "Northern cardinal", "Mountain State", "Sugar maple"],
        ["Wisconsin", "American robin", "America’s Dairyland, Badger State", "Sugar maple"],
        ["Wyoming", "Western meadowlark", "Equality State", "Plains cottonwood"],
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return facts.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return facts[section][0]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "factTableCell", for: indexPath) as! FactTableCell
        cell.nicknames.text = facts[indexPath.section][2]
        cell.birds.text = facts[indexPath.section][1]
        cell.trees.text = facts[indexPath.section][3]
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

class FactTableCell: UITableViewCell {
    
    @IBOutlet weak var nicknames: UILabel!
    @IBOutlet weak var birds: UILabel!
    @IBOutlet weak var trees: UILabel!
}

class FactFiles: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var stateName: String = ""
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "factcell", for: indexPath) as! factCell
        cell.stateLabel.text = categories[indexPath.row]
        switch categories[indexPath.row] {
        case "Alabama":
            cell.backImage.image = UIImage(named:"al")
        case "Alaska":
            cell.backImage.image = UIImage(named:"ak")
        case "Arizona":
            cell.backImage.image = UIImage(named:"az")
        case "Arkansas":
            cell.backImage.image = UIImage(named:"ar")
        case "California":
            cell.backImage.image = UIImage(named:"ca")
        case "Colorado":
            cell.backImage.image = UIImage(named:"co")
        case "Connecticut":
            cell.backImage.image = UIImage(named:"ct")
        case "Delaware":
            cell.backImage.image = UIImage(named:"de")
        case "Florida":
            cell.backImage.image = UIImage(named:"fl")
        case "Georgia":
            cell.backImage.image = UIImage(named:"ga")
        case "Hawaii":
            cell.backImage.image = UIImage(named:"hi")
        case "Idaho":
            cell.backImage.image = UIImage(named:"id")
        case "Illinois":
            cell.backImage.image = UIImage(named:"il")
        case "Indiana":
            cell.backImage.image = UIImage(named:"in")
        case "Iowa":
            cell.backImage.image = UIImage(named:"ia")
        case "Kansas":
            cell.backImage.image = UIImage(named:"ks")
        case "Kentucky":
            cell.backImage.image = UIImage(named:"ky")
        case "Louisiana":
            cell.backImage.image = UIImage(named:"la")
        case "Maine":
            cell.backImage.image = UIImage(named:"me")
        case "Maryland":
            cell.backImage.image = UIImage(named:"md")
        case "Massachusetts":
            cell.backImage.image = UIImage(named:"ma")
        case "Michigan":
            cell.backImage.image = UIImage(named:"mi")
        case "Minnesota":
            cell.backImage.image = UIImage(named:"mn")
        case "Mississippi":
            cell.backImage.image = UIImage(named:"ms")
        case "Missouri":
            cell.backImage.image = UIImage(named:"mo")
        case "Montana":
            cell.backImage.image = UIImage(named:"mt")
        case "Nebraska":
            cell.backImage.image = UIImage(named:"ne")
        case "Nevada":
            cell.backImage.image = UIImage(named:"nv")
        case "New Hampshire":
            cell.backImage.image = UIImage(named:"nh")
        case "New Jersey":
            cell.backImage.image = UIImage(named:"nj")
        case "New Mexico":
            cell.backImage.image = UIImage(named:"nm")
        case "New York":
            cell.backImage.image = UIImage(named:"ny")
        case "North Carolina":
            cell.backImage.image = UIImage(named:"nc")
        case "North Dakota":
            cell.backImage.image = UIImage(named:"nd")
        case "Ohio":
            cell.backImage.image = UIImage(named:"oh")
        case "Oklahoma":
            cell.backImage.image = UIImage(named:"ok")
        case "Oregon":
            cell.backImage.image = UIImage(named:"or")
        case "Pennsylvania":
            cell.backImage.image = UIImage(named:"pa")
        case "Rhode Island":
            cell.backImage.image = UIImage(named:"ri")
        case "South Carolina":
            cell.backImage.image = UIImage(named:"sc")
        case "South Dakota":
            cell.backImage.image = UIImage(named:"sd")
        case "Tennessee":
            cell.backImage.image = UIImage(named:"tn")
        case "Texas":
            cell.backImage.image = UIImage(named:"tx")
        case "Utah":
            cell.backImage.image = UIImage(named:"ut")
        case "Vermont":
            cell.backImage.image = UIImage(named:"vt")
        case "Virginia":
            cell.backImage.image = UIImage(named:"va")
        case "Washington":
            cell.backImage.image = UIImage(named:"wa")
        case "West Virginia":
            cell.backImage.image = UIImage(named:"wv")
        case "Wisconsin":
            cell.backImage.image = UIImage(named:"wi")
        case "Wyoming":
            cell.backImage.image = UIImage(named:"wy")
        case "American Samoa":
            cell.backImage.image = UIImage(named:"asf")
        case "Guam":
            cell.backImage.image = UIImage(named:"guam")
        case "Northern Mariana Islands":
            cell.backImage.image = UIImage(named:"nmi")
        case "Puerto Rico":
            cell.backImage.image = UIImage(named:"prf")
        case "U.S. Virgin Islands":
            cell.backImage.image = UIImage(named:"usvi")
        case "Washington, D.C.":
            cell.backImage.image = UIImage(named:"wdcf")
        default:
            cell.backImage.image = UIImage(named:"wdcf")
        }
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 10
        cell.backImage.layer.masksToBounds = true
        cell.backImage.layer.cornerRadius = 10
        cell.backBlur.layer.masksToBounds = true
        cell.backBlur.layer.cornerRadius = 10
        cell.backBlur.layer.borderWidth = 0.5
        cell.backImage.alpha = 0.6
        cell.backBlur.alpha = 0.5
        cell.backBlur.layer.borderColor = UIColor.black.cgColor
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = self.collectionView(collectionView, cellForItemAt: indexPath) as! factCell
        stateName = cell.stateLabel.text!
        print(stateName)
        
        if let parent = self.parent as? FactMain {
            parent.stateName = self.stateName
            parent.performSegue(withIdentifier: "showFact", sender: stateName)
        }
    }
    
    @IBOutlet var collectionView: UICollectionView!
    
    let categories: [String] = [
        "Alabama",
        "Alaska",
        "Arizona",
        "Arkansas",
        "California",
        "Colorado",
        "Connecticut",
        "Delaware",
        "Florida",
        "Georgia",
        "Hawaii",
        "Idaho",
        "Illinois",
        "Indiana",
        "Iowa",
        "Kansas",
        "Kentucky",
        "Louisiana",
        "Maine",
        "Maryland",
        "Massachusetts",
        "Michigan",
        "Minnesota",
        "Mississippi",
        "Missouri",
        "Montana",
        "Nebraska",
        "Nevada",
        "New Hampshire",
        "New Jersey",
        "New Mexico",
        "New York",
        "North Carolina",
        "North Dakota",
        "Ohio",
        "Oklahoma",
        "Oregon",
        "Pennsylvania",
        "Rhode Island",
        "South Carolina",
        "South Dakota",
        "Tennessee",
        "Texas",
        "Utah",
        "Vermont",
        "Virginia",
        "Washington",
        "West Virginia",
        "Wisconsin",
        "Wyoming",
        "American Samoa",
        "Guam",
        "Northern Mariana Islands",
        "Puerto Rico",
        "U.S. Virgin Islands",
        "Washington, D.C."
    ]
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 2/255, green: 167/255, blue: 231/255, alpha: 1)
    }
    
}
