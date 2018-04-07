//
//  ViewController.swift
//  SliderMenu
//
//  Created by Kondiram Sonawane on 4/7/18.
//  Copyright © 2018 example.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func right(_ sender: Any) {
         let vc = self.storyboard?.instantiateViewController(withIdentifier: "RSlideMenu") as! RSlideMenu
        let nav = UISideMenuNavigationController(rootViewController: vc)
        
        self.present(nav, animated: true, completion: nil)
    }
    
    @IBAction func left(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SlideMenu") as! SlideMenu
        let nav = UISideMenuNavigationController(rootViewController: vc)
        nav.leftSide = true
    
        self.present(nav, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
