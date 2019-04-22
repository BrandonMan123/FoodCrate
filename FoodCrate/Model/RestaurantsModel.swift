//
//  RestaurantsModel.swift
//  FoodCrate
//
//  Created by Brandon Man on 12/4/2019.
//  Copyright © 2019 Brandon Man. All rights reserved.
//

import Foundation
struct Restaurant {
    var name: String
    var description: String
    var menu: [FoodItem]
    init (name: String, description: String, menu: [FoodItem]){
        self.name = name
        self.description = description
        self.menu = menu
    }
}
