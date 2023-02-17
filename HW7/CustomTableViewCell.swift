//
//  CustomTableViewCell.swift
//  HW7
//
//  Created by Карина Чадаева on 17.02.23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet var cellView: UIView!
    @IBOutlet var contactImage: UIImageView!
    @IBOutlet var contactNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
