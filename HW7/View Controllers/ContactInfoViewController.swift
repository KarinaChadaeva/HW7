//
//  ContactInfoViewController.swift
//  HW7
//
//  Created by Карина Чадаева on 17.02.23.
//

import UIKit

class ContactInfoViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    var contact: Person!

    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: contact.name)
        emailLabel.text = "Email: \(contact.email)"
        phoneLabel.text = "Phone: \(contact.phoneNumber)"
        title = contact.fullName
    }

}
