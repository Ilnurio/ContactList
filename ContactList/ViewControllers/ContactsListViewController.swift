//
//  ContactsListViewController.swift
//  ContactList
//
//  Created by Ilnur on 30.04.2023.
//

import UIKit

final class ContactsListViewController: UITableViewController {
    
    var personList: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 40
    }
}

    // MARK: - UITableViewDataSource
    extension ContactsListViewController {
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            personList.count
        }

        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "mobileNumber", for: indexPath)
            var content = cell.defaultContentConfiguration()
            let person = personList[indexPath.row]
            content.text = person.mobilePhone
            content.image = UIImage(systemName: "phone.circle")
            cell.contentConfiguration = content
            return cell
        }
        
        override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            // через фор сделать
            return ""
            }
        }
    
