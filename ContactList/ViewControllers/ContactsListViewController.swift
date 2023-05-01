//
//  ContactsListViewController.swift
//  ContactList
//
//  Created by Ilnur on 30.04.2023.
//

import UIKit

final class ContactsListViewController: UITableViewController {
    
    var personList: [Person] = []
    
    // MARK: - UITableViewDataSource
    
    // определяем количество секций
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    
    // задаем заголовок для каждой секции
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personList[section].fullName
    }
    
    // задаем количество строк в секции
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mobileNumber", for: indexPath)
        
        // получаем экземпляр модели из массива по секции
        let person = personList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        // через switch определяем в какой строке что нужно писать
        switch indexPath.row {
        case 0:
            content.text = person.mobilePhone
            content.image = UIImage(systemName: Contacts.phone.rawValue)
        default:
            content.text = person.eMail
            content.image = UIImage(systemName: Contacts.email.rawValue)
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

    
    
