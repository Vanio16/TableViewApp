//
//  ViewController.swift
//  TableViewApp
//
//  Created by Ivan Zakharov on 11/12/20.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var selectCity: City?
    var cities = [City(name: "Omsk", picture: "omsk"),
                  City(name: "Moscow", picture: "moscow"),
                  City(name: "St. Petersburg", picture: "piter"),
                  City(name: "Novosibirsk", picture: "novosib"),
                  City(name: "Samara", picture: "samara"),
                  City(name: "Irkutsk", picture: "irkutsk")]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        let nibName = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "tableViewCell")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! TableViewCell
        cell.commonInit(cities[indexPath.row].picture, title: cities[indexPath.row].name)
//        cell.titleLabel?.text = cities[indexPath.row].name
//        cell.cityImage?.image = cities[indexPath.row].picture
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 86
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectCity = cities[indexPath.row]
        let secondViewController = SecondViewController()
        secondViewController.commonInit(cities[indexPath.item].picture, title: cities[indexPath.item].name)
//        self.modalPresentationStyle = .fullScreen
//        self.present(secondViewController, animated: true, completion: nil)
        self.navigationController?.pushViewController(secondViewController, animated: true)
        self.tableView.deselectRow(at: indexPath, animated: true)
        print(indexPath)
    }
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        selectCity = cities[indexPath.row]
        return indexPath
    }

}




