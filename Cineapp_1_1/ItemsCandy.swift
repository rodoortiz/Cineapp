//
//  ItemsCandy.swift
//  Cineapp_1_1
//
//  Created by Rodolfo Ortiz on 10/11/19.
//  Copyright © 2019 Rodolfo Ortiz. All rights reserved.
//

import UIKit

class ItemsCandy {
    var image: UIImage
    var candyName: String
    var price: String
    
    init(image: UIImage, candyName: String, price: String) {
        self.image = image
        self.candyName = candyName
        self.price = price
    }
}
