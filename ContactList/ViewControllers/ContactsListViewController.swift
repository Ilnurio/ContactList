//
//  ContactsListViewController.swift
//  ContactList
//
//  Created by Ilnur on 30.04.2023.
//

import UIKit

final class ContactsListViewController: UITableViewController {
    
    private let personList = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
    }
}

    // MARK: - UITableViewDataSource
    extension ContactsListViewController {
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            personList.count
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "contacts", for: indexPath)
            var content = cell.defaultContentConfiguration()
            let person = personList[indexPath.row]
            content.text = person.mobilePhone
            content.image = UIImage(systemName: "phone.circle")
            cell.contentConfiguration = content
            return cell
        }
        
        override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            switch section {
            case 1:
                return "\(section)"
            default:
                return ""
            }
        }
    }
    
