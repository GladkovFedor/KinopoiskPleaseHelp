//
//  Film.swift
//  Кинопоиск, помоги!
//
//  Created by Федор Гладков on 09.04.2024.
//

import Foundation
import UIKit

struct Film {
    
    var name: String
    var genre: String
    var raiting: Double
    var year: Int
    var duration: Date
    var poster: UIImage?
    
    var like: Bool?
    var briefDescription: String?
    
}
