//
//  Movie.swift
//  Кинопоиск, помоги!
//
//  Created by Федор Гладков on 09.04.2024.
//

import UIKit

struct Movie: Decodable {
    var name: String
    var year: Int
    var type: String
    var rating: Raiting
}

struct Raiting: Decodable {
    var kp: Double
    var imdb: Double
}
