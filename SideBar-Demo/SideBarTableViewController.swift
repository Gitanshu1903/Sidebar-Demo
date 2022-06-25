//
//  SideBarTableViewController.swift
//  SideBar-Demo
//
//  Created by ERASOFT on 02/05/22.
//

import UIKit

class SideBarTableViewController: UITableViewController {

    
    var arrSideBarItems = ["Home", "Profile", "Orders", "Settings", "Log Out"]
    var arrSideBarItemsImage = ["house.fill","person.fill","chart.bar.doc.horizontal","snowflake.circle.fill","person.crop.circle.badge"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrSideBarItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = arrSideBarItems[indexPath.row]
        cell.imageView?.image = UIImage.init(systemName: arrSideBarItemsImage[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.reloadData()
        switch indexPath.row {
        case 0: performSegue(withIdentifier: "home", sender: self)
        case 1: performSegue(withIdentifier: "profile", sender: self)
        case 2: performSegue(withIdentifier: "orders", sender: self)
        case 3: performSegue(withIdentifier: "setting", sender: self)
        case 4: performSegue(withIdentifier: "home", sender: self)
        default: performSegue(withIdentifier: "home", sender: self)
        }
    }
    

}
