//
//  ContentView.swift
//  Contacts
//
//  Created by Владислав Голосов on 04.02.2022.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.getContactList()
    
    var body: some View {
        TabView {
            PersonsList(persons: persons)
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Persons")
                }
            ContactList(persons: persons)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Contacts")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
