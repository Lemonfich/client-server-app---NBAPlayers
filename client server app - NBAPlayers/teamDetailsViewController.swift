//
//  TeamDetailsViewController.swift
//  client server app - NBAPlayers
//
//  Created by Сергей on 30.10.2022.
//

import UIKit

class TeamDetailsViewController: UIViewController {

    var player: Player?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = player?.teamName
        navigationController?.navigationBar.prefersLargeTitles = true
        
        
    }
    

   

}
