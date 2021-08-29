//
//  Contact.swift
//  DesafioFoton
//
//  Created by Rodrigo Dias on 28/08/21.
//

import Foundation


struct Contact {
    let name: String
    let phoneNumber: String?
    let birthDate: Date?
    let cep: String?
    let state: String?
    let city: String?
    let district: String?
    let street: String?
    let homeNumber: String?
    //contact photo
    
    init (name: String, phoneNumber: String? = nil, birthDate: Date? = nil, cep: String? = nil, state: String? = nil, city: String? = nil, district: String? = nil, street: String? = nil, homeNumber: String? = nil) {
        self.name = name
        self.phoneNumber = phoneNumber
        self.birthDate = birthDate
        self.cep = cep
        self.state = state
        self.city = city
        self.district = district
        self.street = street
        self.homeNumber = homeNumber
    }
    
}
