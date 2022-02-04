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
                NavigationLink(destination: PersonalInfo(person: person)) {
                    HStack {
                        Image(systemName: "person")
                            .foregroundColor(.blue)
                            .padding()
                        Text(person.fullName)
                    }
                }
                
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
