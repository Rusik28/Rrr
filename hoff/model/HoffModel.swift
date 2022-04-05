//
//  HoffModel.swift
//  hoff
//
//  Created by Руслан Алиев on 01.04.2022.
//
import UIKit
import Foundation

struct Hoff: Decodable {
        var totalCount: Int
        let items: [Product]
}
struct Product: Decodable {
    var id: String
    var name: String
    var image: String
    var prices: [String: Int]
    var discount: Int
    var isBestPrice: Bool
    var isFavorite: Bool
    var articul: String
    var rating: Double
    var numberOfReviews: String
    var in_stock: Int
    var yellow: Bool
    var statusText: String
    var bonusesForbuy: Int
    var isAvailable: Bool
    var images: [String]
    var categoryId: String
    var categoryTitle: String
}

//struct Hoff: Codable {
//    var id: Int?
//    var name: String?
//    var image: String?
//    var new: Bool?
//    var price: Int?
//    var old: Bool?
//    var discount: Int?
//    var full_set_prices: Bool
//    var isBestPrice: Bool?
//    var tag: Bool
//    var isFavorite: Bool?
//    var articul: Int?
//    var rating: Int?
//    var numberOfReviews: Int?
//    var in_stock: Int?
//    var yellow: Bool?
//    var statusText: String?
//    var bonusesForbuy: Int?
//    var deliveryTime: Int?
//    var is_it_kit: Int?
//    var isAvailable: Bool?
//    var complexAsOne: Bool
//    var categoryId: Int?
//    var categoryTitle: String?
//
//}
