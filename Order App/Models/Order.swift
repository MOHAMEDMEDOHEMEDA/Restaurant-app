//
//  Order.swift
//  Order App
//
//  Created by Mohamed Magdy on 10/08/2024.
//

import Foundation

struct Order: Codable {
    var menuItems: [MenuItem]

    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}
