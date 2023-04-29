//
//  PersonsListViewController.swift
//  ContactList
//
//  Created by Ilnur on 29.04.2023.
//

import UIKit

final class PersonsListViewController: UITableViewController {

    private let personList = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
    }

    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = personList[indexPath.row]
        let personInfoVC = segue.destination as? PersonsDetailViewController
        personInfoVC?.person = person
    }
}

 // MARK: - UITableViewDataSource
extension PersonsListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = personList[indexPath.row]
        content.text = person.title
        cell.contentConfiguration = content
        return cell
    }
}
