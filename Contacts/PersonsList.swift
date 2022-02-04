//
//  ContactListView.swift
//  Contacts
//
//  Created by Владислав Голосов on 04.02.2022.
//

import SwiftUI

struct PersonsList: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List (persons, id: \.self) { person in
                Text(person.fullName)
                
            }
            .listStyle(.plain)
            .navigationTitle("Persons List")
        }
    }
}

struct PersonsListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonsList(persons: Person.getContactList())
    }
}
