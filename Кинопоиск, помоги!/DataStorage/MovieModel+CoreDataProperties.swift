//
//  MovieModel+CoreDataProperties.swift
//  Кинопоиск, помоги!
//
//  Created by Федор Гладков on 23.04.2024.
//
//

import Foundation
import CoreData

@objc(MovieModel)
public class MovieModel: NSManagedObject {}

extension MovieModel {

//    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entity> {
//        return NSFetchRequest<Entity>(entityName: "Entity")
//    }

    @NSManaged public var name: String?
    @NSManaged public var year: Int16

}

extension MovieModel: Identifiable {}
