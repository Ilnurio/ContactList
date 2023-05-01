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
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    var mobileInfo: String {
        "Phone: \(mobilePhone)"
    }
    
    var eMailInfo: String {
        "Email: \(eMail)"
    }
    
    static func getContactList() -> [Person] {
        // создаем пустой массив, чтобы его заполнить объектами данных
        var persons:[Person] = []
        // Данные берем из класса DataStore создавая экземпляры класса(массивы)
        // свойсто shuffled() перемешивает данные в массиве данных
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let phones = DataStore.shared.mobilePhones.shuffled()
        
        // создаем свойство, которое принимает наименьшее количество элементов массива
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        // перебираем в цикле целые числа(индексы) для дальнейшего извлечения данных
        // внутри цикла инициализируем экземпляр модели
        for index in 0..<iterationCount {
            let person = Person(
                // передаем значение по индексу, таким образом берем первый элемент массива
                name: names[index],
                surname: surnames[index],
                eMail: emails[index],
                mobilePhone: phones[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}

// чтобы не запоминать как называются системные кнопки можно сделать отдельное перечисление
enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
