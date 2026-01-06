//
//  NewsViewModel.swift
//  NewsHub
//
//  Created by ALISHA JOSHI KOLANGARA on 06/01/26.
//

import Foundation
import SwiftUI
internal import Combine

@MainActor
class NewsViewModel: ObservableObject {
    
    @Published var articles: [Article] = []
    @Published var isLoading = false
    @Published var errorMessage: String? = nil
    
    private let apiService = APIService()
    
    func getTopHeadlines() async {
        isLoading = true
        errorMessage = nil
        
        await withCheckedContinuation { continuation in
            apiService.fetchTopHeadlines { result in
                DispatchQueue.main.async {
                    self.isLoading = false
                    switch result {
                    case .success(let articles):
                        self.articles = articles
                    case .failure(let error):
                        self.errorMessage = "\(error)"
                    }
                    continuation.resume()
                }
            }
        }
    }
}
