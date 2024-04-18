//
//  NavBarController.swift
//  Кинопоиск, помоги!
//
//  Created by Федор Гладков on 17.04.2024.
//

import UIKit

final class NavBarController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        
    }
    
    private func configure() {
        view.backgroundColor = Resourses.Colors.background
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Resourses.Colors.selected,
            .font: UIFont.systemFont(ofSize: 17, weight: .bold)
        ]
    }
}


