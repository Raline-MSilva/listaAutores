//
//  ViewController.swift
//  LearningTask-6.5
//
//  Created by rafael.rollo on 12/04/2022.
//

import UIKit

class AutorViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var autorAPI: AutorAPI?
    
    var autores: [Autor] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        applyTheme()
        
        listarAutores()
    }
    
    func listarAutores() {
        guard let autorAPI = autorAPI else { return }
        self.autores = autorAPI.listaTodos()
    }
}

extension AutorViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return autores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AutorViewCell", for: indexPath) as? AutorTableViewCell else {
            fatalError("Error.")
        }
        
        let autor = autores[indexPath.row]
        
        cell.setup(autor)
        return cell
    }
}

extension AutorViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
