//
//  Resourses.swift
//  Кинопоиск, помоги!
//
//  Created by Федор Гладков on 16.04.2024.
//

import UIKit

enum Resourses {
    enum Colors {
        static var orange = UIColor.orange
        static var background = UIColor.black
        static var selected = UIColor.white
        static var unselested = UIColor.systemGray
        
        static var separator = UIColor.systemGray
    }
    
    enum Strings {
        enum TabBar {
            static var search = "Помоги"
            static var history = "История"
        }
    }
    
    enum Images {
        enum TabBar {
            static var search = UIImage(systemName: "questionmark.video.fill")
            static var history = UIImage(systemName: "clock")
        }
    }
    
    enum Network {
        static var apiToken = "WBB9V86-DKHMCTG-PAMWCZE-HDWW16H"
        static var header = "X-API-KEY"
        
        static var httpGETMethod = "GET"
        enum URLs {
            static var randomMovie = "https://api.kinopoisk.dev/v1/movie/random"
            
//            let urlTop250 = "https://api.kinopoisk.dev/v1.4/movie/random?lists=top250"
            //        let urlSeries = "https://api.kinopoisk.dev/v1.4/movie/random?type=tv-series"
            //        let urlRaiting = ""
            //        let urlSeriesTop250 = "https://api.kinopoisk.dev/v1.4/movie/random?type=tv-series&lists=top250"
        }
    }
    
}
