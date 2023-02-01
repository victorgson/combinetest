//
//  ViewController.swift
//  CombineTest
//
//  Created by Victor Gustafsson on 2023-02-01.
//

import UIKit

class ViewController: UITabBarController {
    
    var dateHelper = DateHelper()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    func createDateController() -> UINavigationController {
        let map = DateViewController(dateHelper: dateHelper)


        map.title = title
        map.tabBarItem = UITabBarItem(title: title, image: UIImage(systemName: "map.fill"), tag: 0)

        return UINavigationController(rootViewController: map)
    }
    
    func createColleagueController() -> UINavigationController {
        let map = ColleagueViewController(dateHelper: dateHelper)


        map.title = title
        map.tabBarItem = UITabBarItem(title: title, image: UIImage(systemName: "map.fill"), tag: 0)

        return UINavigationController(rootViewController: map)
    }
    
    func createTabBar() -> UITabBarController {
        
        let tabBar = UITabBarController()
        
        UITabBar.appearance().tintColor = .black
        UITabBar.appearance().unselectedItemTintColor = .gray
        UITabBar.appearance().isTranslucent = true
        UITabBar.appearance().backgroundColor = .white
        
        tabBar.viewControllers = [createDateController(), createColleagueController()]
        
        return tabBar
        
    }


}

