//
//  RestaurantsAPI.swift
//  Restaurant
//
//  Created by aidin ahmadian on 10/22/19.
//  Copyright © 2019 aidin ahmadian. All rights reserved.
//  https://github.com/aidinahmadian

import Foundation

class RestaurantsAPI {
    static func getLists() -> [Restaurants]{
        let restaurantsLists = [
            Restaurants(imageName: "firstrestaurant", restaurantsName: "Bulrush", priceTag: "Average: 24$"),
            Restaurants(imageName: "secondrestaurant", restaurantsName: "Brothers", priceTag: "Average: 12$"),
            Restaurants(imageName: "thirdrestaurant", restaurantsName: "Aloette", priceTag: "Average: 10$"),
            Restaurants(imageName: "forthrestaurant", restaurantsName: "La Palma", priceTag: "Average: 40$"),
        ]
        return restaurantsLists
    }
}
