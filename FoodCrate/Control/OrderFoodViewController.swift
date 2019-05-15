//
//  OrderFoodViewController.swift
//  FoodCrate
//
//  Created by Brandon Man on 21/4/2019.
//  Copyright © 2019 Brandon Man. All rights reserved.
//

import UIKit
import GoogleSignIn
import GoogleAPIClientForREST
import Foundation
import Alamofire
import DLRadioButton

class OrderFoodViewController: UIViewController {
    var foodSelected = String()
    
    
    private let scopes = [kGTLRAuthScopeSheetsSpreadsheets]
    private let service = GTLRSheetsService()


    @IBOutlet weak var FoodItem: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FoodItem.text = foodSelected
        // Do any additional setup after loading the view.
        
    }
    
    
   
    @IBOutlet weak var venmo: DLRadioButton!
    
    @IBOutlet weak var cash: DLRadioButton!
    
    @IBAction func orderFood(_ sender: Any) {
        if venmo.isSelected == false && cash.isSelected == false{
            print ("please select a payment method")
        }else{
            if venmo.isSelected == true{
                print("venmo payment method selected")
            }else{
                print ("cash payment method selected")
            }
            
        }
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
