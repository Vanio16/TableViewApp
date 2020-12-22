//
//  TableViewCell.swift
//  TableViewApp
//
//  Created by Ivan Zakharov on 17/12/20.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var cityImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func commonInit(_ imageName: UIImage, title: String) {
        cityImage.image = imageName
        titleLabel.text = title
    }
}
