//
//  ContactListViewController.swift
//  HW7
//
//  Created by Карина Чадаева on 16.02.23.
//

import UIKit

class ContactListViewController: UIViewController {
    @IBOutlet var contactListTableView: UITableView!
    
    var contacts: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contactListTableView.rowHeight = 80
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let contactInfoVC = segue.destination as! ContactInfoViewController
        guard let indexPath = contactListTableView.indexPathForSelectedRow else { return }
        contactInfoVC.contact = contacts[indexPath.row]
    }
    
}

//MARK: - Table view data source
extension ContactListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let contact = contacts[indexPath.row]
        cell.textLabel?.text = contact.fullName
        cell.imageView?.image = UIImage(named: contact.name)
        
        return cell
    }
}

