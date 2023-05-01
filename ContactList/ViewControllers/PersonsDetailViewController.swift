//
//  PersonsDetailViewController.swift
//  ContactList
//
//  Created by Ilnur on 29.04.2023.
//

import UIKit

final class PersonsDetailViewController: UIViewController {

    @IBOutlet var mobilePhoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mobilePhoneLabel.text = person.mobileInfo
        emailLabel.text = person.eMailInfo
    }
}
