//
//  RSlideMenu.swift
//  SliderMenu
//
//  Created by Uber - Abdul on 21/02/17.
//  Copyright © 2017 example.com. All rights reserved.
//

import UIKit

class RSlideMenu: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var dataArray:NSMutableArray!
    @IBOutlet weak var modelTableView: UITableView!
    @IBOutlet weak var tableBackView : UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        dataArray = NSMutableArray()
        let dic1 = NSMutableDictionary()
        dic1.setValue("Hide post", forKey: "title")
        dic1.setValue("please hide your post", forKey: "subTitle")
        dic1.setValue("1", forKey: "image")
        dataArray.add(dic1)
        let dic2 = NSMutableDictionary()
        dic2.setValue("Delete post", forKey: "title")
        dic2.setValue("please delete your post", forKey: "subTitle")
        dic2.setValue("2", forKey: "image")
        dataArray.add(dic2)
        let dic3 = NSMutableDictionary()
        dic3.setValue("Share post", forKey: "title")
        dic3.setValue("please share your post", forKey: "subTitle")
        dic3.setValue("3", forKey: "image")
        dataArray.add(dic3)
        let dic4 = NSMutableDictionary()
        dic4.setValue("Fav post", forKey: "title")
        dic4.setValue("please add as fav your post", forKey: "subTitle")
        dic4.setValue("4", forKey: "image")
        let dic5 = NSMutableDictionary()
        dic5.setValue("Hide post", forKey: "title")
        dic5.setValue("please hide your post", forKey: "subTitle")
        dic5.setValue("1", forKey: "image")
        dataArray.add(dic5)
        let dic6 = NSMutableDictionary()
        dic6.setValue("Delete post", forKey: "title")
        dic6.setValue("please delete your post", forKey: "subTitle")
        dic6.setValue("2", forKey: "image")
        dataArray.add(dic6)
        let dic7 = NSMutableDictionary()
        dic7.setValue("Share post", forKey: "title")
        dic7.setValue("please share your post", forKey: "subTitle")
        dic7.setValue("3", forKey: "image")
        dataArray.add(dic7)
        let dic8 = NSMutableDictionary()
        dic8.setValue("Fav post", forKey: "title")
        dic8.setValue("please add as fav your post", forKey: "subTitle")
        dic8.setValue("4", forKey: "image")
        dataArray.add(dic8)
        
        self.modelTableView.delegate = self
        self.modelTableView.dataSource = self
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
        custamizeMenu()
    }
    
    func custamizeMenu() {
        SideMenuManager.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
        SideMenuManager.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
        
        SideMenuManager.menuWidth = 275
        SideMenuManager.menuFadeStatusBar = false
        SideMenuManager.menuPresentMode = .menuSlideIn

        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.modelTableView.dequeueReusableCell(withIdentifier: "ModelTableCell") as! ModelTableCell
        let dic = self.dataArray.object(at: indexPath.row) as! NSMutableDictionary
        
        cell.titleLbl.text =  dic.value(forKey: "title") as? String
        cell.subTitleLbl.text =  dic.value(forKey: "subTitle") as? String
        cell.imgView.image = UIImage(named: (dic.value(forKey: "image") as? String)!)
        cell.btn.tag = indexPath.row
        cell.btn.addTarget(self, action:#selector(buttonClicked), for: .touchUpInside)
        return cell
    }
    @objc func buttonClicked(sender:UIButton)
    {
        if sender.tag == 0
        {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ViewController1") as! ViewController1
       SideMenuManager.shared.pushViewController(viewController:vc)
        }
        else
        {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
            SideMenuManager.shared.pushViewController(viewController:vc)
        }
        
    }
    

}
