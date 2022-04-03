//
//  HoffModel.swift
//  hoff
//
//  Created by Руслан Алиев on 01.04.2022.
//

import Foundation

class Hoff: Codable {
    var id: Int
    var name: String
    var image: String
    var new: Bool?
    var price: Int?
    struct Prices {
        var newPrice: Int
        var oldPrice: Int
        init?(dict: [String: AnyObject]) {
            guard let newPrice = dict["newPrice"] as? Int,
                  let oldPrice = dict["oldPrice"] as? Int
            else {return nil}
            self.newPrice = newPrice
            self.oldPrice = oldPrice
        }
    }
    
    var old: Bool?
    var discount: Int
    //    var full_set_prices: Bool
    var isBestPrice: Bool?
    //    var tag: Bool
    var isFavorite: Bool?
    var articul: Int
    var rating: Int
    var numberOfReviews: Int
    var in_stock: Int
    var yellow: Bool?
    var statusText: String
    var bonusesForbuy: Int
    var deliveryTime: Int
    var is_it_kit: Int
    var isAvailable: Bool?
    
    struct Images {
        var one: String
        var two: String
        var three: String
        var four: String
        var five: String
        init?(dict: [String: AnyObject]) {
            guard let one = dict["one"] as? String,
                  let two = dict["two"] as? String,
                  let three = dict["three"] as? String,
                  let four = dict["four"] as? String,
                  let five = dict["five"] as? String
            else {return nil}
            self.one = one
            self.two = two
            self.three = three
            self.four = four
            self.five = five
        }
    }
    
    //    var complexAsOne: Bool
    var categoryId: Int
    var categoryTitle: String
    
    init?(dict: [String: AnyObject]) {
        guard let id = dict["id"] as? Int,
              let name = dict["name"] as? String,
              let image = dict["image"] as? String,
              let discount = dict["discount"] as? Int,
              let articul = dict["articul"] as? Int,
              let rating = dict["rating"] as? Int,
              let numberOfReviews = dict["numberOfReviews"] as? Int,
              let in_stock = dict["in_stock"] as? Int,
              let statusText = dict["statusText"] as? String,
              let bonusesForbuy = dict["bonusesForbuy"] as? Int,
              let deliveryTime = dict["deliveryTime"] as? Int,
              let is_it_kit = dict["is_it_kit"] as? Int,
              let categoryId = dict["categoryId"] as? Int,
              let categoryTitle = dict["categoryTitle"] as? String
                
                
        else {return nil}
        
        self.id = id
        self.name = name
        self.image = image
        self.discount = discount
        self.rating = rating
        self.articul = articul
        self.numberOfReviews = numberOfReviews
        self.in_stock = in_stock
        self.statusText = statusText
        self.bonusesForbuy = bonusesForbuy
        self.deliveryTime = deliveryTime
        self.is_it_kit = is_it_kit
        self.categoryId = categoryId
        self.categoryTitle = categoryTitle
    
}
}
