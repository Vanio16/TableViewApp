//
//  ViewController.swift
//  TableViewApp
//
//  Created by Ivan Zakharov on 11/12/20.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var cities = [City(name: "Omsk", picture: "omsk"),
                  City(name: "Moscow", picture: "moscow"),
                  City(name: "St. Petersburg", picture: "piter"),
                  City(name: "Novosibirsk", picture: "novosib"),
                  City(name: "Samara", picture: "samara"),
                  City(name: "Irkutsk", picture: "irkutsk")]
    var selectCity: City?
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectCity = cities[indexPath.row]
        print(indexPath)
    }
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        selectCity = cities[indexPath.row]
        return indexPath
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? SecondViewController {
            controller.city = selectCity
        }
    }

}

