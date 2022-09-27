//
//  Autor.swift
//  LearningTask-6.5
//
//  Created by Raline Maria da Silva on 26/09/22.
//

import Foundation

struct Autor {
    
    let fotoURI: String
    let nome: String
    let sobrenome: String
    let bio: String
    let tecnologias: [String]
    
    //propriedade computada
    var nomeSobrenome: String {
        return "\(nome) \(sobrenome)"
    }
    
    init(foto: String, nome: String, sobrenome: String, bio: String, tecnologias: String...) {
        fotoURI = foto
        self.nome = nome
        self.sobrenome = sobrenome
        self.bio = bio
        self.tecnologias = tecnologias
    }
    
}
