//
//  ViaCepResponse.swift
//  DesafioFoton
//
//  Created by Rodrigo Dias on 30/08/21.
//

import Foundation

struct ViaCepResponse: Codable {
    let cep: String?
    let logradouro: String?
    let complemento: String?
    let bairro: String?
    let localidade: String?
    let uf: String?
    let ibge: String?
    let gia: String?
    let ddd: String?
    let siafi: String?
}
