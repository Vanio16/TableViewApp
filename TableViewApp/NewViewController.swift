//
//  NewViewController.swift
//  TableViewApp
//
//  Created by Ivan Zakharov on 14/12/20.
//

import Foundation
import UIKit
class NewViewController: UIViewController {
    var city: City?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var pictureImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = city?.name
        pictureImageView.image = city?.picture
    }
    
    @IBAction func closeScreenButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
