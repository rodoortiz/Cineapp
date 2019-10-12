//
//  TableViewController.swift
//  Cineapp_1_1
//
//  Created by Rodolfo Ortiz on 10/9/19.
//  Copyright © 2019 Rodolfo Ortiz. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var itemsMovie = [ItemsMovie]() //var itemsMovie: [ItemsMovie] = []
    var pictures = [String]()
    
    let photo1 = UIImage(named: "img1")
    let photo2 = UIImage(named: "img2")
    let photo3 = UIImage(named: "img3")
    let photo4 = UIImage(named: "img4")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let fm = FileManager.default
//        let path = Bundle.main.resourcePath!
//        let items = try! fm.contentsOfDirectory(atPath: path)
//
//        for item in items {
//            if item.hasPrefix("img") {
//                pictures.append(item)
//            }
//        }
        
        itemsMovie = createArray()
    }
    
    func createArray() -> [ItemsMovie] {
        
        var tempMovies = [ItemsMovie]()
        
        let movie1 = ItemsMovie(image: photo1!, movieName: "It 2", clasif: "B-15", time: "6:15")
        let movie2 = ItemsMovie(image: photo2!, movieName: "Once Upon A Time", clasif: "B-15", time: "12:15")
        let movie3 = ItemsMovie(image: photo3!, movieName: "Ad astra", clasif: "B", time: "3:15")
        let movie4 = ItemsMovie(image: photo4!, movieName: "Joker", clasif: "B-15", time: "9:15")
        
        tempMovies.append(movie1)
        tempMovies.append(movie2)
        tempMovies.append(movie3)
        tempMovies.append(movie4)
        
        return tempMovies
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsMovie.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Movie") as! TableViewCell //Type casting
        
        let movie = itemsMovie[indexPath.row]
        
        cell.setCell(movie: movie)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            
            vc.selectedMovie = itemsMovie[indexPath.row].movieName
            vc.selectedTime = itemsMovie[indexPath.row].time
            vc.selectedClasif = itemsMovie[indexPath.row].clasif
            vc.selectedImage = itemsMovie[indexPath.row].image
            
            vc.avalaibleTickets = 50
            
            navigationController?.pushViewController(vc, animated: true)
        }
            
//         if let vc2 = storyboard?.instantiateViewController(withIdentifier: "Ticket") as? TicketViewController {
//
//            vc2.selectedMovie2 = itemsMovie[indexPath.row].movieName
//            vc2.selectedTime2 = itemsMovie[indexPath.row].time
//            vc2.selectedClasif2 = itemsMovie[indexPath.row].clasif
//            vc2.selectedImage2 = itemsMovie[indexPath.row].image
    
//            let movieDetail = itemsMovie[indexPath.row]
//
//            vc.setHead(movie: movieDetail)            
    }
}
