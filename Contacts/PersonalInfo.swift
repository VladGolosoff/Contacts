//
//  PersonalInfo.swift
//  Contacts
//
//  Created by Владислав Голосов on 04.02.2022.
//

import SwiftUI

struct PersonalInfo: View {
    let person: Person
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "phone")
                    .foregroundColor(.blue)
                Text(person.phoneNumber)
            }
                .padding(.bottom, 10)
            HStack {
                Image(systemName: "tray")
                    .foregroundColor(.blue)
                Text(person.email)
                Spacer()
            }
            Spacer()
        }
        .padding()
        .navigationTitle(person.fullName)
    }
}

struct PersonalInfo_Previews: PreviewProvider {
    static var previews: some View {
        PersonalInfo(person: Person(name: "Vladislav", surname: "Golosov", email: "v.golosoff@gmail.com", phoneNumber: "88005553535"))
    }
}
