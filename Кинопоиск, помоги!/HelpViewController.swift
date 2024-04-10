//
//  ViewController.swift
//  Кинопоиск, помоги!
//
//  Created by Федор Гладков on 08.04.2024.
//

import UIKit

class HelpViewController: UIViewController {
    
    var tapCounter = 0
    
    var helpButton: UIButton = {
        
        var btn = UIButton()
            btn.backgroundColor = .orange
            btn.setTitle("  Кинопоиск, помоги!  ", for: .normal)
//        btn.setTitle("  Кинопоиск !  ", for: .highlighted)
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
            btn.layer.cornerRadius = 25
            btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(helpButtonPressed), for: .touchUpInside)
        
        return btn
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        addAllSubviews()
        
        NSLayoutConstraint.activate([
            helpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            helpButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 250),
            helpButton.heightAnchor.constraint(equalToConstant: 50),
            helpButton.widthAnchor.constraint(equalToConstant: 250)
        ])

    }
    
    func addAllSubviews() {
        view.addSubview(helpButton)
    }
    
    @objc func helpButtonPressed(_ handler: UIButton) {
        print("Button pressed")
        
        self.helpButton.setTitle("Давай еще!", for: .normal)

        
//        Ниже лежит блок с анимацией съезжания кнопки "Кинопоиск, помоги!" вниз
//        при ее центральном расположении.
        
//        tapCounter += 1
        
//        if tapCounter <= 1 {
//
//            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut) {
//                self.helpButton.center.y = self.helpButton.center.y + 250
//
//            } completion: { _ in
////                self.helpButton.setTitle("Давай еще!", for: .normal)
//            }
//        }

    }
}

