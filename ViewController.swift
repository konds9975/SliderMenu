//
//  ViewController.swift
//  SliderMenu
//
//  Created by Kondiram Sonawane on 4/7/18.
//  Copyright © 2018 example.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
       
    }
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        SideMenuManager.shared.viewController = self
        SideMenuManager.shared.setPanGesture()
    }
    @IBAction func right(_ sender: Any)
    {
        SideMenuManager.shared.openRightSideBar()
    }
    
    @IBAction func left(_ sender: Any)
    {
       SideMenuManager.shared.openLeftSideBar()
    }
    
   
}

