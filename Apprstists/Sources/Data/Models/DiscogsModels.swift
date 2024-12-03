//
//  DiscogsModels.swift
//  Apprstists
//
//  Created by Alejandro Agudelo on 2/12/24.
//

import Foundation

struct Pagination: Decodable {
    let page: Int
    let pages: Int
    let perPage: Int
    let items: Int
    
    enum CodingKeys: String, CodingKey {
        case perPage = "per_page"
        case page, pages, items
    }
}
