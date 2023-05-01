//
//  Person.swift
//  ContactList
//
//  Created by Ilnur on 29.04.2023.
//

struct Person {
    let name: String
    let surname: String
    let eMail: String
    let mobilePhone: String
    
    var title: String {
        "\(name) \(surname)"
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
                surname: person.surnames.randomElement() ?? "",
                eMail: person.emails.randomElement() ?? "",
                mobilePhone: person.mobilePhones.randomElement() ?? ""
            )
            persons.append(person)
        }
        return persons
    }
}
