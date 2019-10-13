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
    
    static var amountCandy = Int()
    
    @IBAction func valueCandy(_ sender: UIStepper) {
        numberCandy.text = Int(sender.value).description
        CandyTableViewCell.amountCandy = Int(sender.value)
        print(CandyTableViewCell.amountCandy)
    }
    
    static func add() -> String {
        CandyTableViewCell.amountCandy = (CandyTableViewCell.amountCandy) * 8
        
        let amountCandyString = String(CandyTableViewCell.amountCandy)
        return amountCandyString
    }
    
    func setCell(candy: ItemsCandy) {
        imageCandy.image = candy.image
        titleCandy.text = candy.candyName
        priceCandy.text = candy.price
    }
}
