//
//  PersonsListViewController.swift
//  ContactList
//
//  Created by Ilnur on 29.04.2023.
//

import UIKit

final class PersonsListViewController: UITableViewController {
    
    var personList: [Person] = []
    
    // MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = personList[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // определяем индекс выбранной пользователем строки
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let personInfoVC = segue.destination as? PersonsDetailViewController else { return }
            personInfoVC.person = personList[indexPath.row]
        }
    }
}

