//
//  NetworkService.swift
//  Кинопоиск, помоги!
//
//  Created by Федор Гладков on 18.04.2024.
//

import UIKit

final class NetworkService {
    
    let token = Resourses.Network.apiToken
    let valueForHeaderField = Resourses.Network.header
    
    func request(urlString: String, completion: @escaping (Result<Movie, Error>) -> Void) {
        
        guard let url = URL(string: urlString) else {
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = Resourses.Network.httpGETMethod
        request.setValue(token, forHTTPHeaderField: valueForHeaderField)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                if let error = error {
                    completion(.failure(error))
                }
    
                guard let data = data else { return }
        
                do {
                    let film = try JSONDecoder().decode(Movie.self, from: data)
                    completion(.success(film))
                } catch let jsonError {
                    print("Failhui", jsonError)
                    completion(.failure(jsonError))
                }
            }
        }.resume()
    }
}
