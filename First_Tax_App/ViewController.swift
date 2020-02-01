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
    @IBOutlet weak var SalaryTxt: UITextField!
    @IBOutlet weak var salesTaxTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPriceLbl.text = "£20,000"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTotalPrice(_ sender: Any) {
        let salary = Double(SalaryTxt.text!)!
        let salesTax = Double(salesTaxTxt.text!)!

        let totalSalesTax = salary * salesTax
        let totalPrice = salary + totalSalesTax
        totalPriceLbl.text = "£\(totalPrice)"
    }

}

