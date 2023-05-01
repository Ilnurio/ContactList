//
//  DataStore.swift
//  ContactList
//
//  Created by Ilnur on 29.04.2023.
//

final class DataStore {
    // обьявляем static свойство для синглтона
    static let shared = DataStore()
    
    let names = [
        "Ilnur",
        "Julia",
        "Petr",
        "Alina",
        "Robert",
        "Marina",
        "Ivan",
        "Karina",
        "Armen",
        "Ruslan"
    ]

    let surnames = [
        "Fattakhov",
        "Frolov",
        "Ginadyan",
        "Isakyan",
        "Slunko",
        "Ganeev",
        "Ahmedov",
        "Viktorov",
        "Popov",
        "Kasseta"
    ]

    let emails = [
        "qwe@mail.ru",
        "dyrew@mail.ru",
        "ldlsj@mail.ru",
        "nckwe@mail.ru",
        "mbceo@mail.ru",
        "wlcej@mail.ru",
        "smbqw@mail.ru",
        "xdr@mail.ru",
        "pmki@mail.ru",
        "rtnec@mail.ru"
    ]

    let mobilePhones = [
        "7929345674",
        "9102394321",
        "3456565756",
        "2344687654",
        "1223456734",
        "5677054233",
        "3458906425",
        "4567895342",
        "3486900382",
        "2409390313"
    ]
    
    private init() {}
}
