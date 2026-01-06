//
//  Untitled.swift
//  NewsHub
//
//  Created by ALISHA JOSHI KOLANGARA on 06/01/26.
//

import Foundation

struct Article: Codable, Identifiable {
    let id = UUID()               // local unique id for SwiftUI
    let title: String
    let description: String?
    let url: String
    let urlToImage: String?
    let publishedAt: String
    
    enum CodingKeys: String, CodingKey {
        case title, description, url, urlToImage, publishedAt
    }
}
