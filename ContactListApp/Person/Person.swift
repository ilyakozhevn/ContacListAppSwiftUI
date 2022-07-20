//
//  Person.swift
//  ContactListApp
//
//  Created by Ilya Kozhevnikov on 20.07.2022.
//

struct Person {
    var name: String
    var surname: String
    var phone: String
    var email: String
    
    var fullname: String {
        name + " " + surname
    }
    
    static func getRandomPersons() -> [Person] {
        let names = DataStore().names.shuffled()
        let surnames = DataStore().surnames.shuffled()
        let phones = DataStore().phones.shuffled()
        let emails = DataStore().emails.shuffled()
        
        var persons = [Person]()
        
        for ((name, surname), (phone, email)) in zip(zip(names, surnames), zip(phones, emails)) {
            persons.append(
                Person(
                    name: name,
                    surname: surname,
                    phone: phone,
                    email: email
                )
            )
        }
        
        return persons
    }
}
