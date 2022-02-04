//
//  ContactList.swift
//  Contacts
//
//  Created by Владислав Голосов on 04.02.2022.
//

import SwiftUI

struct ContactList: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List (persons, id: \.self) { person in
                Section(person.fullName) {
                    HStack {
                        Image(systemName: "phone")
                            .foregroundColor(.blue)
                        Text(person.phoneNumber)
                    }
                    HStack {
                        Image(systemName: "tray")
                            .foregroundColor(.blue)
                        Text(person.email)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(persons: Person.getContactList())
    }
}
