//
//  ViewController.swift
//  CafeCollectionMOK
//
//  Created by TYLER MOK on 9/12/23.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var foodDisplayOutlet: UITextView!
    
    @IBOutlet weak var userItemInput: UITextField!
    
    
    @IBOutlet weak var userQuantityInput: UITextField!
    
    
    @IBOutlet weak var priceDisplayOutlet: UITextView!
    
    
    @IBOutlet weak var cartDisplay: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    let food : [String] = ["Hotdog","Cheeseburger","Skittles","Ice Tea","French Fries"]
    
    let prices : [String] = ["2.50","3.25","1.25","2.00","1.75"]
    
    
    var add = ""
    
    @IBAction func menuButton(_ sender: Any) {
        var i = 0
        while i < food.count {
            let items = food[i]
            foodDisplayOutlet.text += "\n" + items
            i += 1
        }
        
        var z = 0
        while z < prices.count {
            let price = prices[z]
            priceDisplayOutlet.text += "\n" + price
            z += 1
        }
    }
    
    var cart : [String: Double] = [:]
    
    
    @IBAction func addToCartButton(_ sender: Any) {
        let foodItem = userItemInput.text!
        let quantity = Double(userQuantityInput.text!)!
        //print(foodItem)
        //print(quantity)
        cart[foodItem] = quantity
        //print(cart)
        if food.contains(foodItem) {
            add += "\n\(cart)"
            //cartDisplay.text = add
            let indexOf = Int(exactly: food.firstIndex(of: foodItem)!)!
            let pr = Double(prices[indexOf])!
            let quant  = Double(quantity)
            let temp = pr * quant
            cartDisplay.text = ("$\(temp)")
            //print(temp)
            if cart.keys.contains(foodItem) {
                
            }
        }
        
    }
    
    
}

