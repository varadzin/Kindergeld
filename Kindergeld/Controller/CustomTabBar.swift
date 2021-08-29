//
//  CustomTabBar.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 21/08/2021.
//

import UIKit

class CustomTabBar: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bar1 = createTabBarController(vc: InfoVC(), title: "Informácie",image: #imageLiteral(resourceName: "help-circle"))
        let bar3 = createTabBarController(vc: PayDaysVC(), title: "Výplatné termíny",image: #imageLiteral(resourceName: "calendar"))
        let bar2 = createTabBarController(vc: FormVC1(), title: "Formulár",image: #imageLiteral(resourceName: "edit"))
        let bar4 = createTabBarController(vc: SettingsVC(), title: "Nastavenia",image: #imageLiteral(resourceName: "settings"))
        let bar5 = createTabBarController(vc: OutputVC(), title: "Vyplnená žiadosť",image: #imageLiteral(resourceName: "file-text"))
        viewControllers = [bar1, bar2, bar3, bar4, bar5]
    }
    
    func createTabBarController(vc: UIViewController, title: String, image: UIImage) -> UINavigationController {
        vc.navigationItem.title = title
        let navController = UINavigationController(rootViewController: vc)
        navController.title = title
        navController.tabBarItem.image = image
  
        return navController
    }
    
}
