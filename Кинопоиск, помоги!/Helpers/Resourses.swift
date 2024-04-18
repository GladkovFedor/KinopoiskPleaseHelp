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
}
