//
//  ViewController.swift
//  SalesTax
//
//  Created by Nick The O on 31/01/2020.
//  Copyright © 2020 Nick The O. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalPriceLbl: UILabel!
    @IBOutlet weak var priceTxt: UITextField!
    @IBOutlet weak var salesTaxTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPriceLbl.text = "£0.99"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTotalPrice(_ sender: Any) {
        let price = Double(priceTxt.text!)!
        let salesTax = Double(salesTaxTxt.text!)!

        let totalSalesTax = price * salesTax
        let totalPrice = price + totalSalesTax
        totalPriceLbl.text = "£\(totalPrice)"
    }

}

