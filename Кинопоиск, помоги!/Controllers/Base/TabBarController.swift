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
        
        tabBar.tintColor = Resourses.Colors.selected
        tabBar.barTintColor = Resourses.Colors.unselested
        tabBar.backgroundColor = Resourses.Colors.background
        
        let searchController = SearchViewController()
        let historyController = HistoryViewController()
        
        let searchNavigation = NavBarController(rootViewController: searchController)
        let historyNavigation = NavBarController(rootViewController: historyController)
        
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
