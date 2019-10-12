//
//  DetailViewController.swift
//  Cineapp_1_1
//
//  Created by Rodolfo Ortiz on 10/9/19.
//  Copyright © 2019 Rodolfo Ortiz. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var adultValue: UILabel!
    @IBOutlet weak var adultStepper: UIStepper!
    @IBOutlet weak var kidValue: UILabel!
    @IBOutlet weak var kidStepper: UIStepper!
    
    var adults: Int?
    var kids: Int?
    
    @IBAction func adultValueChange(_ sender: UIStepper) {
        adultValue.text = Int(sender.value).description
        adults = Int(sender.value)

    }
    
    @IBAction func kidValueChange(_ sender: UIStepper) {
        kidValue.text = Int(sender.value).description
        kids = Int(sender.value)
    }
    
    @IBOutlet weak var imageMovieDetail: UIImageView!
    @IBOutlet weak var nameMovieDetail: UILabel!
    @IBOutlet weak var califDetail: UILabel!
    @IBOutlet weak var timeDetail: UILabel!
    
    @IBOutlet weak var availabe: UILabel!
    
    var selectedMovie: String?
    var selectedTime: String?
    var selectedClasif: String?
    var selectedImage: UIImage?
    
    var avalaibleTickets: Int!
    
    
//    var selectedRow: ItemsMovie?
    
//    func setHead(movie: ItemsMovie) {
//        imageMovieDetail.image = movie.image
//        nameMovieDetail.text = movie.movieName
//        califDetail.text = movie.clasif
//        timeDetail.text = movie.time
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        adultStepper.wraps = false
        adultStepper.autorepeat = true
        adultStepper.maximumValue = 10
        kidStepper.wraps = false
        kidStepper.autorepeat = true
        kidStepper.maximumValue = 10
        
//        setHead(movie: selectedRow!)
        
        nameMovieDetail.text = selectedMovie
        califDetail.text = selectedClasif
        timeDetail.text = selectedTime
        imageMovieDetail.image = selectedImage
        availabe.text = String(avalaibleTickets)

    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "payment") {
            let displayVC = segue.destination as! PayViewController
            displayVC.totalAdults = adults
            displayVC.totalKids = kids
            
            displayVC.selectedMovie2 = selectedMovie
            displayVC.selectedImage2 = selectedImage
            displayVC.selectedTime2 = selectedTime
            displayVC.selectedClasif2 = selectedClasif
        }
        
    }


}
