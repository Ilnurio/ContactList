//
//  Person.swift
//  ContactList
//
//  Created by Ilnur on 29.04.2023.
//

struct Person {
    let name: String
    let surName: String
    let eMail: String
    let mobilePhone: String
    
    var title: String {
        "\(name) \(surName)"
    }
    
    var mobileInfo: String {
        "Phone: \(mobilePhone)"
    }
    
    var eMailInfo: String {
        "Email: \(eMail)"
    }
    
    static func getContactList() -> [Person] {
        var persons:[Person] = []
        let person = DataStore()
        for _ in 1...10 {
            let person = Person(
                name: person.names.randomElement() ?? "",
                surName: person.surNames.randomElement() ?? "",
                eMail: person.eMails.randomElement() ?? "",
                mobilePhone: person.mobilePhone.randomElement() ?? ""
            )
            persons.append(person)
        }
        return persons
    }
}
