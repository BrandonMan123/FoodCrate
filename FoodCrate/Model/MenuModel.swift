//
//  MenuModel.swift
//  FoodCrate
//
//  Created by Brandon Man on 15/4/2019.
//  Copyright © 2019 Brandon Man. All rights reserved.
//

import Foundation
struct FoodItem {
    var name: String
    var price: Float
    var description: String?
    init (name:String, price:Float, description: String?){
        self.name = name
        self.price = price
        self.description = description
    }
}
