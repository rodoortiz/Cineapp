//
//  TableViewCell.swift
//  Cineapp_1_1
//
//  Created by Rodolfo Ortiz on 10/10/19.
//  Copyright © 2019 Rodolfo Ortiz. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageMovie: UIImageView!
    @IBOutlet weak var titleMovie: UILabel!
    @IBOutlet weak var clasifMovie: UILabel!
    @IBOutlet weak var timeMovie: UILabel!
    
    func setCell(movie: ItemsMovie) {
        imageMovie.image = movie.image
        titleMovie.text = movie.movieName
        clasifMovie.text = movie.clasif
        timeMovie.text = movie.time
    }
}
