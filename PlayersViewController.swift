//
//  PlayersViewController.swift
//  client server app - NBAPlayers
//
//  Created by Сергей on 20.10.2022.
//

import UIKit

class PlayersViewController: UIViewController, UITableViewDataSource {

    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath)
        
        cell.textLabel?.text = "Player \(indexPath.row) "
        return cell
    }
    

 

}
