//
//  ViewController.swift
//  Atelier01
//
//  Created by CHEBIHI FAYCAL on 4/5/2023.
//

import UIKit

class ViewController: UIViewController {

    var beforeTaxPrice: Float = 0
    var salsesTaxeRate: Float = 0
    
    @IBOutlet weak var afterTaxPriceTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func beforeTaxePriceChanged(_ sender: UITextField) {
        
        if let value = Float(sender.text!){
            beforeTaxPrice = value
        }else{
            beforeTaxPrice = 0
        }
    }
    
  
    @IBAction func sallesTaxeRateChanged(_ sender: UITextField) {
        if let value = Float(sender.text!){
            salsesTaxeRate = value
        }else{
            salsesTaxeRate = 0
        }
    }
    
    @IBAction func buttonPress(_ sender: Any) {
        
        let salesTax = beforeTaxPrice * salsesTaxeRate / 100
        let afterTaxPrice = beforeTaxPrice + salesTax
        
        afterTaxPriceTextField.text = String(afterTaxPrice)
        
    }
    
}

