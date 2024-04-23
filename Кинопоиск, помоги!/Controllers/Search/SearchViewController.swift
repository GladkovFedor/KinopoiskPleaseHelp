//
//  SearchViewController.swift
//  Кинопоиск, помоги!
//
//  Created by Федор Гладков on 08.04.2024.
//

import UIKit

class SearchViewController: BaseController {
    
    var movie: Movie?
    
    var tapCounter = 0
    
    var searchButton = UIButton(type: .system)
    let buttonsStack = UIStackView()

    let raitingButton = FilterButton(withTitle: "Рейтинг")
    let topButton = FilterButton(withTitle: "Топ250")
    let serialButton = FilterButton(withTitle: "Сериал")
    
    let movieView = MovieView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

// MARK: - Extensions

extension SearchViewController {
    
    override func setupViews() {
        super.setupViews()
        
        view.setupView(searchButton)
        view.setupView(buttonsStack)
        view.setupView(movieView)
        buttonsStack.addArrangedSubview(topButton)
        buttonsStack.addArrangedSubview(raitingButton)
        buttonsStack.addArrangedSubview(serialButton)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        let safeLayout = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            
            buttonsStack.topAnchor.constraint(equalTo: safeLayout.topAnchor, constant: 5),
            buttonsStack.leadingAnchor.constraint(equalTo: safeLayout.leadingAnchor, constant: 5),
            buttonsStack.trailingAnchor.constraint(equalTo: safeLayout.trailingAnchor, constant: -5),
            buttonsStack.heightAnchor.constraint(equalToConstant: 25),
            
            movieView.topAnchor.constraint(equalTo: buttonsStack.bottomAnchor, constant: 10),
            movieView.bottomAnchor.constraint(equalTo: searchButton.topAnchor, constant: -5),
            movieView.leadingAnchor.constraint(equalTo: safeLayout.leadingAnchor),
            movieView.trailingAnchor.constraint(equalTo: safeLayout.trailingAnchor),
            
            searchButton.centerXAnchor.constraint(equalTo: safeLayout.centerXAnchor),
            searchButton.bottomAnchor.constraint(equalTo: safeLayout.bottomAnchor, constant: -5),
            searchButton.heightAnchor.constraint(equalToConstant: 50),
            searchButton.widthAnchor.constraint(equalToConstant: 250),
            
        ])
    }
    
    override func configure() {
        super.configure()
        
        navigationController?.navigationBar.isHidden = true
    
        buttonsStack.axis = .horizontal
        buttonsStack.spacing = 5
        buttonsStack.alignment = .center
        buttonsStack.backgroundColor = .black
        buttonsStack.distribution = .fillEqually
        
        raitingButton.addTarget(self, action: #selector(raitingButtonPressed), for: .touchUpInside)
        topButton.addTarget(self, action: #selector(topButtonPressed), for: .touchUpInside)
        serialButton.addTarget(self, action: #selector(serialButtonPressed), for: .touchUpInside)

        searchButton.backgroundColor = .orange
        searchButton.setTitle("Кинопоиск, помоги!", for: .normal)
        searchButton.setTitleColor(.white, for: .normal)
        searchButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        searchButton.layer.cornerRadius = 25
        searchButton.addTarget(self, action: #selector(helpButtonPressed), for: .touchUpInside)
    }
    
    func getMovie() {
        
        let network = NetworkService()
        let urlString = Resourses.Network.URLs.randomMovie
        
        network.request(urlString: urlString) { [weak self] (result) in
            switch result {
                
            case .success(let movie):
                self?.movie = movie
                
                print("Название - \(movie.name)\nГод выпуска - \(movie.year)\nРейтинги:\nКинопоиск - \(movie.rating.kp), IMDb - \(movie.rating.imdb)\n")
                
                StorageManager.shared.createMovie(name: movie.name, year: movie.year)
                
            case .failure(let error):
                print(error)
            }
        }
    }
}

@objc extension SearchViewController {
 
    func topButtonPressed(_ handler: UIButton) {
        print("top btn pressed\n")
        
        if topButton.isSelected == false {
            topButton.isSelected = true
            topButton.backgroundColor = .orange
            topButton.layer.borderWidth = 0
        } else {
            topButton.isSelected = false
            topButton.backgroundColor = .black
            topButton.layer.borderWidth = 2
        }
        
        let moviesInCD = StorageManager.shared.fetchMovies()
        print("В CoreDat'е уже \(moviesInCD.count) фильма(-ов)!")
        print("А последний рекомендованый - \(moviesInCD[(moviesInCD.count - 1)].name ?? "oshibka")")
    }
    
    func raitingButtonPressed(_ handler: UIButton) {
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
    
    func serialButtonPressed(_ handler: UIButton) {
        print(movie)
        
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
    func helpButtonPressed(_ handler: UIButton) {
        print("Button pressed")
        
        self.searchButton.setTitle("Давай еще!", for: .normal)
        
        getMovie()
        

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



