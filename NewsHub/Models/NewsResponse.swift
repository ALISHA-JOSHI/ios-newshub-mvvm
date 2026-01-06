//
//  Untitled.swift
//  NewsHub
//
//  Created by ALISHA JOSHI KOLANGARA on 06/01/26.
//

import Foundation

struct NewsResponse: Codable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}
