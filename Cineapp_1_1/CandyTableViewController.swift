//
//  CandyTableViewController.swift
//  Cineapp_1_1
//
//  Created by Rodolfo Ortiz on 10/11/19.
//  Copyright © 2019 Rodolfo Ortiz. All rights reserved.
//

import UIKit

class CandyTableViewController: UITableViewController {
    
    var itemsCandy = [ItemsCandy]()
    var pictures = [String]()
    
    var candyTableViewCell: CandyTableViewCell!
    
    let photo1 = UIImage(named: "candy1")
    let photo2 = UIImage(named: "candy2")
    let photo3 = UIImage(named: "candy3")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        itemsCandy = createArray()
    }
    
    func createArray() -> [ItemsCandy] {
        
        var tempCandy = [ItemsCandy]()
        
        let candy1 = ItemsCandy(image: photo1!, candyName: "CarlosV", price: "$8.00")
        let candy2 = ItemsCandy(image: photo2!, candyName: "Lucas", price: "$8.00")
        let candy3 = ItemsCandy(image: photo3!, candyName: "Paleta", price: "$8.00")
        
        tempCandy.append(candy1)
        tempCandy.append(candy2)
        tempCandy.append(candy3)
        
        return tempCandy
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsCandy.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Candy") as! CandyTableViewCell
        let candy = itemsCandy[indexPath.row]

        
        cell.setCell(candy: candy)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc2 = storyboard?.instantiateViewController(withIdentifier: "pay") as? PayCandyViewController {

            vc2.candyNumber = CandyTableViewCell.amountCandy
            vc2.candyName = itemsCandy[indexPath.row].candyName
            vc2.candyPrice = itemsCandy[indexPath.row].price
            vc2.total = CandyTableViewCell.add()

            navigationController?.pushViewController(vc2, animated: true)
        }
    }
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if(segue.identifier == "payCandy") {
//            var indexPath: IndexPath!
//            let displayVC = segue.destination as! PayCandyViewController
//
//            displayVC.candyName = itemsCandy[indexPath.row].candyName
//            displayVC.candyPrice = itemsCandy[indexPath.row].price
//        }
//    }
}
//
