//
//  AutorTableViewCell.swift
//  LearningTask-6.5
//
//  Created by Raline Maria da Silva on 26/09/22.
//

import UIKit

class AutorTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var tecnologias: UILabel!
    
    func setup(_ autor: Autor) {
        nomeLabel.text = autor.nomeSobrenome
        tecnologias.text = autor.tecnologias.joined(separator: ", ")
    }
}
