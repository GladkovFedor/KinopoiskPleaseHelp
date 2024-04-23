//
//  StorageManager.swift
//  Кинопоиск, помоги!
//
//  Created by Федор Гладков on 23.04.2024.
//

import UIKit
import CoreData

// MARK: - CRUD

public final class StorageManager: NSObject {
    public static let shared = StorageManager()
    private override init() {}
    
    private var appDelegate: AppDelegate {
        UIApplication.shared.delegate as! AppDelegate
    }
    
    private var context: NSManagedObjectContext {
        appDelegate.persistentContainer.viewContext
    }
    
    public func createMovie(name: String, year: Int) {
        guard let movieEntityDescription = NSEntityDescription.entity(forEntityName: "MovieModel", in: context) else {
            return
            
        }
        let movie = MovieModel(entity: movieEntityDescription, insertInto: context)
        movie.name = name
        movie.year = Int16(year)
        
        appDelegate.saveContext()
        
        print("movie has saved in coredata")
    }
    
    public func fetchMovies() -> [MovieModel] {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "MovieModel")
        do {
            return try context.fetch(fetchRequest) as! [MovieModel]
        } catch {
            print(error.localizedDescription)
        }
        
        return []
    }
}
