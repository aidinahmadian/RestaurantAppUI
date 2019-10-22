//
//  FoodsAPI.swift
//  Restaurant
//
//  Created by aidin ahmadian on 10/22/19.
//  Copyright © 2019 aidin ahmadian. All rights reserved.
//  https://github.com/aidinahmadian

import Foundation

class FoodsAPI {
    static func getLists() -> [Foods]{
        let foodsLists = [
            Foods(imageName: "firstfood"),
            Foods(imageName: "secondfood"),
            Foods(imageName: "thirdfood"),
            Foods(imageName: "forthfood"),
        ]
        return foodsLists
    }
}
