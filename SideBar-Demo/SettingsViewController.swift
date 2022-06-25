//
//  SettingsViewController.swift
//  SideBar-Demo
//
//  Created by ERASOFT on 02/05/22.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var sideBarButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            sideBarButton.target = self.revealViewController()
            sideBarButton.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }

}
