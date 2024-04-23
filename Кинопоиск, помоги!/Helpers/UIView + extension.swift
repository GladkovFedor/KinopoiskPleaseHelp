//
//  UIView + extension.swift
//  Кинопоиск, помоги!
//
//  Created by Федор Гладков on 18.04.2024.
//

import UIKit

extension UIView {
    
    func setupView(_ view: UIView) {
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
    }
    
}
