//
//  ResponseModel.swift
//  Order App
//
//  Created by Mohamed Magdy on 10/08/2024.
//

import Foundation


struct MenuResponse: Codable {
    let items: [MenuItem]
}



struct CategoriesResponse: Codable {
    let categories: [String]
}


struct OrderResponse: Codable {
    let prepTime: Int

    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}

