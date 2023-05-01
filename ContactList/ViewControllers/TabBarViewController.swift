//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Ilnur on 01.05.2023.
//

import UIKit

// в этом контроллере и нужно инициализировать первоначально массив и передать его на другие контроллеры
class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }

    // настраиваем контроллеры для перехода, инициализируем их экземпляры
    private func setupViewControllers() {
        guard let personsVC = viewControllers?.first as? PersonsListViewController else { return }
        guard let contactsVC = viewControllers?.last as? ContactsListViewController else { return }
        
        // инициализируем массив persons и передаем в контроллеры
        let persons = Person.getContactList()
        personsVC.persons = persons
        contactsVC.persons = persons
    }
}
