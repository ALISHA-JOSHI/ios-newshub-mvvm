//
//  APIService.swift
//  NewsHub
//
//  Created by ALISHA JOSHI KOLANGARA on 06/01/26.
//

import Foundation

class APIService {
    
    private let apiKey = "YOUR_API_KEY_HERE"

    func fetchTopHeadlines(completion: @escaping (Result<[Article], NetworkError>) -> Void) {
        
        let urlString = "https://newsapi.org/v2/top-headlines?country=us&apiKey=\(apiKey)"
        
        guard let url = URL(string: urlString) else {
            completion(.failure(.invalidURL))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if error != nil {
                completion(.failure(.requestFailed))
                return
            }
            
            guard let data = data else {
                completion(.failure(.requestFailed))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let newsResponse = try decoder.decode(NewsResponse.self, from: data)
                completion(.success(newsResponse.articles))
            } catch {
                completion(.failure(.decodingFailed))
            }
            
        }.resume()
    }
}
