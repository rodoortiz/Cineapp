//
//  PayViewController.swift
//  Cineapp_1_1
//
//  Created by Rodolfo Ortiz on 10/10/19.
//  Copyright © 2019 Rodolfo Ortiz. All rights reserved.
//

import UIKit

class PayViewController: UIViewController {

    @IBOutlet weak var totalPayment: UILabel!
    @IBOutlet weak var numberAdults: UILabel!
    @IBOutlet weak var numberKids: UILabel!
    
    var totalAdults: Int?
    var totalKids: Int?
    
    var selectedMovie2: String?
    var selectedTime2: String?
    var selectedClasif2: String?
    var selectedImage2: UIImage?
    
    func addition() -> String {
        var totalInt = Int()
        
        totalInt = (80 * (totalAdults ?? 0)) + (65 * (totalKids ?? 0))
        
        let total = String(totalInt)
        
        return total
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let totalAdultsString = String(totalAdults ?? 0)
        let totalKidsString = String(totalKids ?? 0)

        print(addition())
        totalPayment.text = addition()
        numberAdults.text = totalAdultsString
        numberKids.text = totalKidsString
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "ticket") {
            let displayVC = segue.destination as! TicketViewController
            displayVC.selectedMovie3 = selectedMovie2
            displayVC.selectedImage3 = selectedImage2
            displayVC.selectedTime3 = selectedTime2
            displayVC.selectedClasif3 = selectedClasif2
            
            displayVC.total = addition()
            
            
        }
        
    }
}
