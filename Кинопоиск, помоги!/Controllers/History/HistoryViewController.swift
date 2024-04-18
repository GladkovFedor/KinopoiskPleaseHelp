//
//  HistoryViewController.swift
//  Кинопоиск, помоги!
//
//  Created by Федор Гладков on 09.04.2024.
//

import UIKit

class HistoryViewController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension HistoryViewController {
    
    override func configure() {
        super.configure()
        
        title = "История поиска"
        navigationController?.tabBarItem.title = Resourses.Strings.TabBar.history
        
        addNavBarButton(to: .right, with: "Clear")
        
    }
}
