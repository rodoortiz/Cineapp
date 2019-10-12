//
//  TicketViewController.swift
//  Cineapp_1_1
//
//  Created by Rodolfo Ortiz on 10/11/19.
//  Copyright © 2019 Rodolfo Ortiz. All rights reserved.
//

import UIKit

class TicketViewController: UIViewController {
 
    @IBOutlet weak var imageTicket: UIImageView!
    @IBOutlet weak var movieNameTicket: UILabel!
    @IBOutlet weak var clasifTicket: UILabel!
    @IBOutlet weak var timeTicket: UILabel!
    
    @IBOutlet weak var adultsTicket: UILabel!
    @IBOutlet weak var kidsTicket: UILabel!
    @IBOutlet weak var totalTicket: UILabel!
    
    var selectedMovie3: String?
    var selectedTime3: String?
    var selectedClasif3: String?
    var selectedImage3: UIImage?
    
    var total: String?
    
    @IBAction func backToBeginning(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieNameTicket.text = selectedMovie3
        clasifTicket.text = selectedClasif3
        timeTicket.text = selectedTime3
        imageTicket.image = selectedImage3
        
        totalTicket.text = total

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
