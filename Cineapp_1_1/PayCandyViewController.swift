//
//  PayCandyViewController.swift
//  Cineapp_1_1
//
//  Created by Rodolfo Ortiz on 10/11/19.
//  Copyright © 2019 Rodolfo Ortiz. All rights reserved.
//

import UIKit

class PayCandyViewController: UIViewController {

    @IBOutlet weak var numberCandy: UILabel!
    @IBOutlet weak var nameCandy: UILabel!
    @IBOutlet weak var priceCandy: UILabel!
    @IBOutlet weak var totalCandy: UILabel!
    
    var candyNumber: String?
    var candyName: String?
    var candyPrice: String?
    
    @IBAction func buy(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print(candyNumber)
        numberCandy.text = candyNumber
        nameCandy.text = candyNumber
        priceCandy.text = candyPrice
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
