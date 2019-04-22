//
//  OrderFoodViewController.swift
//  FoodCrate
//
//  Created by Brandon Man on 21/4/2019.
//  Copyright © 2019 Brandon Man. All rights reserved.
//

import UIKit

class OrderFoodViewController: UIViewController {
    var foodSelected = String()
    
    
    @IBOutlet weak var FoodItem: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FoodItem.text = foodSelected
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
