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
        let bar1 = createTabBarController(customVC: InfoViewController(), title: "Application", image: #imageLiteral(resourceName: "edit"))
        let bar2 = createTabBarController(customVC: PayDaysViewController(), title: "Date of payment", image: #imageLiteral(resourceName: "calendar"))
        let bar3 = createTabBarController(customVC: SettingsViewController(), title: "Settings", image: #imageLiteral(resourceName: "settings"))
        let bar4 = createTabBarController(customVC: Form9ViewController(), title: "Print Application", image: #imageLiteral(resourceName: "file-text"))
        viewControllers = [bar1, bar2, bar3, bar4]
    }
    func createTabBarController(customVC: UIViewController, title: String, image: UIImage) -> UINavigationController {
        customVC.navigationItem.title = title
        let navController = UINavigationController(rootViewController: customVC)
        navController.title = title
        navController.tabBarItem.image = image
        return navController
    }
}
