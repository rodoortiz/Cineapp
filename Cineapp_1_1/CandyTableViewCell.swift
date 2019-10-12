//
//  CandyTableViewCell.swift
//  Cineapp_1_1
//
//  Created by Rodolfo Ortiz on 10/11/19.
//  Copyright © 2019 Rodolfo Ortiz. All rights reserved.
//

import UIKit

class CandyTableViewCell: UITableViewCell {

    @IBOutlet weak var imageCandy: UIImageView!
    @IBOutlet weak var titleCandy: UILabel!
    @IBOutlet weak var priceCandy: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var numberCandy: UILabel!
    
    var amountCandy = Int()
    
    @IBAction func valueCandy(_ sender: UIStepper) {
        numberCandy.text = Int(sender.value).description
        amountCandy = Int(sender.value)
    }
    
    func add() -> String {
        amountCandy = (amountCandy) * 8
        
        let amountCandyString = String(amountCandy)
        print(amountCandyString)
        return amountCandyString
    }
    
    func setCell(candy: ItemsCandy) {
        imageCandy.image = candy.image
        titleCandy.text = candy.candyName
        priceCandy.text = candy.price
    }
}
