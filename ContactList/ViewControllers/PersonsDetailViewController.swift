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
        
        // чтобы задать заголовок можем сразу это сделать через title
        title = person.fullName
        mobilePhoneLabel.text = person.mobileInfo
        emailLabel.text = person.eMailInfo
    }
}
