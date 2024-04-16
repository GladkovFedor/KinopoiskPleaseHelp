//
//  TabBarController.swift
//  Кинопоиск, помоги!
//
//  Created by Федор Гладков on 16.04.2024.
//

import UIKit

enum Tabs: Int {
    case search
    case history
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        
        tabBar.tintColor = Resourses.colors.selected
        tabBar.barTintColor = Resourses.colors.unselested
        tabBar.backgroundColor = Resourses.colors.background
        
//        tabBar.layer.borderColor = Resourses.colors.separator.cgColor
//        tabBar.layer.borderWidth = 1
//        tabBar.layer.masksToBounds = true
        
        let searchController = HelpViewController()
        let historyController = HistoryViewController()
        
        let searchNavigation = UINavigationController(rootViewController: searchController)
        let historyNavigation = UINavigationController(rootViewController: historyController)
        
        searchNavigation.tabBarItem = UITabBarItem(title: Resourses.Strings.TabBar.search,
                                                   image: Resourses.Images.TabBar.search,
                                                   tag: Tabs.search.rawValue)
        historyNavigation.tabBarItem = UITabBarItem(title: Resourses.Strings.TabBar.history,
                                                   image: Resourses.Images.TabBar.history,
                                                    tag: Tabs.history.rawValue)
        
        setViewControllers([
            searchNavigation,
            historyNavigation
        ], animated: false)
        
    }

}
