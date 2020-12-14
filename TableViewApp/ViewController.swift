//
//  ViewController.swift
//  TableViewApp
//
//  Created by Ivan Zakharov on 11/12/20.
//

import UIKit
var data = ["Omsk", "Moscow" , "St. Petersburg", "Novosibirsk", "Samara", "Irkutsk"]
var cities = [City(name: "Omsk", picture: "omsk"),
              City(name: "Moscow", picture: "moscow"),
              City(name: "St. Petersburg", picture: "piter"),
              City(name: "Novosibirsk", picture: "novosib"),
              City(name: "Samara", picture: "samara"),
              City(name: "Irkutsk", picture: "irkutsk")]
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = cities[indexPath.row].name
        cell.imageView?.image = cities[indexPath.row].picture
        return cell
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

