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
        
        var btn = UIButton(type: .system)
            btn.backgroundColor = .orange
            btn.setTitle("  Кинопоиск, помоги!  ", for: .normal)
            btn.setTitleColor(.white, for: .normal)
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
            btn.layer.cornerRadius = 25
            btn.translatesAutoresizingMaskIntoConstraints = false
            btn.addTarget(self, action: #selector(helpButtonPressed), for: .touchUpInside)
        return btn
        
    }()
    
    var buttonsStack: UIStackView = {
        var sv = UIStackView()
            sv.axis = .horizontal
            sv.spacing = 5
            sv.alignment = .center
            sv.backgroundColor = .black
            sv.distribution = .fillEqually
            sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    var topButton: UIButton = {
        var btn = UIButton()
            btn.backgroundColor = .black
            btn.isSelected = false
            btn.setTitle("Топ250", for: .normal)
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
            btn.layer.cornerRadius = 12
            btn.layer.borderColor = UIColor.white.cgColor
            btn.layer.borderWidth = 2
            btn.translatesAutoresizingMaskIntoConstraints = false
            btn.addTarget(self, action: #selector(topButtonPressed), for: .touchUpInside)
        return btn
    }()
    
    var raitingButton: UIButton = {
        var btn = UIButton()
            btn.isSelected = false
            btn.backgroundColor = .black
            btn.setTitle("Рейтинг > 7", for: .normal)
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
            btn.layer.cornerRadius = 12
            btn.layer.borderColor = UIColor.white.cgColor
            btn.layer.borderWidth = 2
            btn.translatesAutoresizingMaskIntoConstraints = false
            btn.addTarget(self, action: #selector(raitingButtonPressed), for: .touchUpInside)
        return btn
    }()
    
    var serialButton: UIButton = {
        var btn = UIButton()
            btn.isSelected = false
            btn.backgroundColor = .black
            btn.setTitle("Сериал", for: .normal)
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
            btn.layer.cornerRadius = 12
            btn.layer.borderColor = UIColor.white.cgColor
            btn.layer.borderWidth = 2
            btn.translatesAutoresizingMaskIntoConstraints = false
            btn.addTarget(self, action: #selector(serialButtonPressed), for: .touchUpInside)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let safeLayout = view.safeAreaLayoutGuide
        
        view.backgroundColor = .black
        
        addAllSubviews()
        
        NSLayoutConstraint.activate([
            helpButton.centerXAnchor.constraint(equalTo: safeLayout.centerXAnchor),
            helpButton.bottomAnchor.constraint(equalTo: safeLayout.bottomAnchor, constant: -15),
            helpButton.heightAnchor.constraint(equalToConstant: 50),
            helpButton.widthAnchor.constraint(equalToConstant: 250),
            
            buttonsStack.topAnchor.constraint(equalTo: safeLayout.topAnchor, constant: 5),
            buttonsStack.leadingAnchor.constraint(equalTo: safeLayout.leadingAnchor, constant: 5),
            buttonsStack.trailingAnchor.constraint(equalTo: safeLayout.trailingAnchor, constant: -5),
            buttonsStack.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
    
    func addAllSubviews() {
        view.addSubview(helpButton)
        view.addSubview(buttonsStack)
        buttonsStack.addArrangedSubview(topButton)
        buttonsStack.addArrangedSubview(raitingButton)
        buttonsStack.addArrangedSubview(serialButton)
    }
    
    @objc func topButtonPressed(_ handler: UIButton) {
        print("top btn pressed")
        
        if topButton.isSelected == false {
            topButton.isSelected = true
            topButton.backgroundColor = .orange
            topButton.layer.borderWidth = 0
        } else {
            topButton.isSelected = false
            topButton.backgroundColor = .black
            topButton.layer.borderWidth = 2
        }
    }
    
    @objc func raitingButtonPressed(_ handler: UIButton) {
        print("raiting btn pressed")
        
        if raitingButton.isSelected == false {
            raitingButton.isSelected = true
            raitingButton.backgroundColor = .orange
            raitingButton.layer.borderWidth = 0
        } else {
            raitingButton.isSelected = false
            raitingButton.backgroundColor = .black
            raitingButton.layer.borderWidth = 2
        }
    }
    
    @objc func serialButtonPressed(_ handler: UIButton) {
        print("serial btn pressed")
        
        if serialButton.isSelected == false {
            serialButton.isSelected = true
            serialButton.backgroundColor = .orange
            serialButton.layer.borderWidth = 0
        } else {
            serialButton.isSelected = false
            serialButton.backgroundColor = .black
            serialButton.layer.borderWidth = 2
        }
    }
    @objc func helpButtonPressed(_ handler: UIButton) {
        print("Button pressed")
        
        self.helpButton.setTitle("Давай еще!", for: .normal)
        
//
        

        
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

