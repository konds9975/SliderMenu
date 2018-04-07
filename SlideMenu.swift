//
//  ViewController.swift
//  SliderMenu
//
//  Created by Uber - Abdul on 21/02/17.
//  Copyright © 2017 example.com. All rights reserved.
//

import UIKit

class SlideMenu: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationController?.isNavigationBarHidden = true
        //SideMenuManager.menuFadeStatusBar = false
        custamizeMenu()
    }
    func custamizeMenu() {
        SideMenuManager.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
        SideMenuManager.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
        
        SideMenuManager.menuWidth = 238
        SideMenuManager.menuFadeStatusBar = false
        SideMenuManager.menuPresentMode = .menuSlideIn
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

