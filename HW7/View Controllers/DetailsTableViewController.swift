//
//  DetailsTableViewController.swift
//  HW7
//
//  Created by Карина Чадаева on 17.02.23.
//

import UIKit

class DetailsTableViewController: UITableViewController {

    var contacts: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return contacts.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return contacts[section].fullName
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "details", for: indexPath)
        
        let contact = contacts[indexPath.section]
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = contact.email
            cell.imageView?.image = UIImage(systemName: "mail")
        default:
            cell.textLabel?.text = contact.phoneNumber
            cell.imageView?.image = UIImage(systemName: "phone")
        }
        
        return cell
    }

    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .purple
        
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = .white
        header.textLabel?.font = UIFont(name: "Helvetica-Bold", size: 24)
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
