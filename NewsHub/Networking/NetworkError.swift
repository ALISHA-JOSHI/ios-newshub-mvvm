//
//  NetworkError.swift
//  NewsHub
//
//  Created by ALISHA JOSHI KOLANGARA on 06/01/26.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case requestFailed
    case decodingFailed
}
