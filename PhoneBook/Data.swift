//
//  Data.swift
//  PhoneBook
//
//  Created by Vahtee Boo on 29.07.2021.
//

struct Persons {
    
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    init(name: String, surname: String, phone: String, email: String) {
        self.name = name
        self.surname = surname
        self.phone = phone
        self.email = email
    }
}
