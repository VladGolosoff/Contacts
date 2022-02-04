//
//  DataMAnager.swift
//  Contacts
//
//  Created by Владислав Голосов on 04.02.2022.
//

class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "John", "Aaron","Tim",
        "Ted", "Steven", "Sharon",
        "Nicola", "Allan", "Bruce", "Carl"
    ]
    
    let surnames = [
        "Smith", "Dow", "Isaacson", "Pennyworth",
        "Jankins", "Butler", "Black", "Robertson",
        "Murphy", "Williams"
    ]
    
    let emails = [
        "swiftbook@yandex.ru", "swiftbook@gmail.com", "swiftbook@mail.ru",
        "swiftbook@rambler.ru",  "swiftbook@bk.ru", "swiftbook@list.ru",
        "swiftbook@yahoo.com", "swiftbook@icloud.com", "swiftbook@outlook.com",
        "swiftbook@msn.com"
    ]
    
    let phones = [
        "+79991234567", "+79181234567", "+79281234567",
        "+74951234567", "+78001234567", "+79091234567",
        "+79041234567", "+79301234567", "+79451234567",
        "+79391234567"
    ]
    
    private init() {}
}
