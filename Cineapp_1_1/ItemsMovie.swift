//
//  ItemsMovie.swift
//  Cineapp_1_1
//
//  Created by Rodolfo Ortiz on 10/10/19.
//  Copyright © 2019 Rodolfo Ortiz. All rights reserved.
//

import UIKit

class ItemsMovie {
    
    var image: UIImage
    var movieName: String
    var clasif: String
    var time: String
    
    init(image: UIImage, movieName: String, clasif: String, time: String) {
        self.image = image
        self.movieName = movieName
        self.clasif = clasif
        self.time = time
    }
}
