//
//  BaseController.swift
//  Кинопоиск, помоги!
//
//  Created by Федор Гладков on 17.04.2024.
//

import UIKit

enum Position {
    case left
    case right
}

class BaseController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        layoutViews()
        configure()
        
    }
}

@objc extension BaseController {
    
    func setupViews() {
        
    }
    
    func layoutViews() {
        
    }
    
    func configure() {
        view.backgroundColor = Resourses.Colors.background
    }
    
    func navBarLeftButtonTapped() {
        print("left button tapped")
    }
    
    func navBarRightButtonTapped() {
        print("right button tapped")
    }
}

// MARK: - Extensions

extension BaseController {
    func addNavBarButton(to position: Position, with title: String) {
        
        let btn = UIButton(type: .system)
            btn.setTitle(title, for: .normal)
            btn.setTitleColor(Resourses.Colors.selected, for: .normal)
            btn.setTitleColor(Resourses.Colors.unselested, for: .disabled)
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        
        switch position {
            case .left:
                btn.addTarget(self, action: #selector(navBarLeftButtonTapped), for: .touchUpInside)
                navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btn)
            case .right:
                btn.addTarget(self, action: #selector(navBarRightButtonTapped), for: .touchUpInside)
                navigationItem.rightBarButtonItem = UIBarButtonItem(customView: btn)
        }
    }
}
