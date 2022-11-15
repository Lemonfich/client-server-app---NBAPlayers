//
//  TeamDetailsViewController.swift
//  client server app - NBAPlayers
//
//  Created by Сергей on 30.10.2022.
//

import UIKit

class TeamDetailsViewController: UIViewController {

    var team: Team?
    
    
    @IBOutlet weak var confLable: UILabel!
    
    @IBOutlet weak var confStaticLable: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = team?.fullName
        navigationController?.navigationBar.prefersLargeTitles = true
        confLable.text = team?.conference
        
        
        
        
    }
    

   

}
