//
//  FilmInfoLabel.swift
//  Кинопоиск, помоги!
//
//  Created by Федор Гладков on 18.04.2024.
//

import UIKit

class FilmInfoLabel: UILabel {
    
    init(withText text: String, fontSize: CGFloat) {
        super.init(frame: .zero)
        
        self.text = text
        font = UIFont.systemFont(ofSize: fontSize)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
extension FilmInfoLabel {
    func configure() {
        textColor = Resourses.Colors.unselested
        textAlignment = .center
        translatesAutoresizingMaskIntoConstraints = false
    }
}
