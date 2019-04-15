//
//  RestaurantsModel.swift
//  FoodCrate
//
//  Created by Brandon Man on 12/4/2019.
//  Copyright © 2019 Brandon Man. All rights reserved.
//

import Foundation
struct Restaurant {
    var name: String?
    var description: String?
    init (name: String?, description: String?){
        self.name = name
        self.description = description
    }
}
