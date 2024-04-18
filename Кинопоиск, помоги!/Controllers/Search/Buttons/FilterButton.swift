//
//  FilterButton.swift
//  Кинопоиск, помоги!
//
//  Created by Федор Гладков on 17.04.2024.
//

import UIKit

final class FilterButton: UIButton {
    
    init(withTitle title: String) {
        super.init(frame: .zero)
        
        setTitle(title, for: .normal)
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

private extension FilterButton {
    
    func configure() {
        backgroundColor = Resourses.Colors.background
        isSelected = false
        titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        layer.cornerRadius = 12
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 2
        translatesAutoresizingMaskIntoConstraints = false
    }
}
