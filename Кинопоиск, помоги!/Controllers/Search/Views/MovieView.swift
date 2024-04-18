//
//  MovieView.swift
//  Кинопоиск, помоги!
//
//  Created by Федор Гладков on 17.04.2024.
//

import UIKit

class MovieView: UIView {
    
    let poster: UIImageView = {
        let imv = UIImageView()
            imv.image = UIImage(named: "TestImage")
        return imv
        
    }()
    
    let movieTitle = FilmInfoLabel(withText: "Title of movie", fontSize: 17)
    let raitingLabel = FilmInfoLabel(withText: "Raiting", fontSize: 13)
    let yearAndGenreLabel = FilmInfoLabel(withText: "Year, genre", fontSize: 13)
    let countryAndDurationLabel = FilmInfoLabel(withText: "Country and duration", fontSize: 13)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        layoutViews()
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MovieView {
    
    func setupViews() {
        setupView(poster)
        setupView(movieTitle)
        setupView(raitingLabel)
        setupView(yearAndGenreLabel)
        setupView(countryAndDurationLabel)
    }
    
    func layoutViews() {
        
        NSLayoutConstraint.activate([
        
            poster.topAnchor.constraint(equalTo: topAnchor),
            poster.leadingAnchor.constraint(equalTo: leadingAnchor),
            poster.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            movieTitle.centerXAnchor.constraint(equalTo: centerXAnchor),
            movieTitle.topAnchor.constraint(equalTo: poster.bottomAnchor, constant: 5),
            movieTitle.heightAnchor.constraint(equalToConstant: 25),
        
            raitingLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            raitingLabel.topAnchor.constraint(equalTo: movieTitle.bottomAnchor, constant: 5),
            raitingLabel.heightAnchor.constraint(equalToConstant: 15),
            
            yearAndGenreLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            yearAndGenreLabel.topAnchor.constraint(equalTo: raitingLabel.bottomAnchor, constant: 5),
            yearAndGenreLabel.heightAnchor.constraint(equalToConstant: 15),
            
            countryAndDurationLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            countryAndDurationLabel.topAnchor.constraint(equalTo: yearAndGenreLabel.bottomAnchor, constant: 5),
            countryAndDurationLabel.heightAnchor.constraint(equalToConstant: 15),
            countryAndDurationLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5)
            
        ])
    }
    
    func configure() {
        movieTitle.textColor = Resourses.Colors.selected
        movieTitle.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        poster.contentMode = .scaleAspectFit
    }
}
