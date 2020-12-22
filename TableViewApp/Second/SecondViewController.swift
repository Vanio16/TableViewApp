//
//  NewViewController.swift
//  TableViewApp
//
//  Created by Ivan Zakharov on 14/12/20.
//

import Foundation
import UIKit
class SecondViewController: UIViewController {
    var imageName: UIImage?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var pictureImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pictureImageView.image = imageName
    }
    func commonInit(_ imageName: UIImage, title: String) {
        self.imageName = imageName
        self.title = title
    }
    @IBAction func closeScreenButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
