//
//  TabBarController.swift
//  HW7
//
//  Created by Карина Чадаева on 17.02.23.
//

import UIKit

class TabBarController: UITabBarController {

    let persons = Person.getContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers(with: persons)
    }
    
    private func setupViewControllers(with persons: [Person]) {
        let contactListVC = viewControllers?.first as! ContactListViewController
        let detailsVC = viewControllers?.last as! DetailsTableViewController
        
        detailsVC.contacts = persons
        contactListVC.contacts = persons
    }

}
