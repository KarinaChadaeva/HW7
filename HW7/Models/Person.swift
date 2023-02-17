//
//  Person.swift
//  HW7
//
//  Created by Карина Чадаева on 16.02.23.
//

struct Person {
    var name: String
    var surname: String
    var email: String
    var phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getContacts() -> [Person] {
        var contacts: [Person] = []
        
        let names = DataManager.share.names.shuffled()
        let surnames = DataManager.share.surnames.shuffled()
        let emails = DataManager.share.emails.shuffled()
        let phoneNumbers = DataManager.share.phoneNumbers.shuffled()
        
        for index in 0..<names.count {
            let person = Person(name: names[index],
                                surname: surnames[index],
                                email: emails[index],
                                phoneNumber: phoneNumbers[index])
            contacts.append(person)
        }
        
        return  contacts
    }
}
