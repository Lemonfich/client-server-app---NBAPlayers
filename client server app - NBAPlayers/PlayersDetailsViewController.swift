//
//  PlayersDetailsViewController.swift
//  client server app - NBAPlayers
//
//  Created by Сергей on 22.10.2022.
//

import UIKit

class PlayersDetailsViewController: UIViewController {

    

    @IBOutlet weak var positionLable: UILabel!
    
    @IBOutlet weak var hightLable: UILabel!
    
    @IBOutlet weak var teamButton: UIButton!
    

    
    
    var player: Player?
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = player?.fullname
        navigationController?.navigationBar.prefersLargeTitles = true
        positionLable.text = player?.position
        hightLable.text = player?.height
        teamButton.setTitle(player?.teamName, for: .normal)


    }


    
    @IBAction func teamButtoOnTapped(_ sender: Any) {
        
        
        let TeamDetailsViewController = storyboard!.instantiateViewController(withIdentifier: "TeamDetailsViewController") as! TeamDetailsViewController
        
                
        navigationController?.pushViewController(TeamDetailsViewController, animated: true)
        
    }
    
        
    }
    
    


//название комыдны, город, конференция
//Lakers, Los Angeles, west
//Heat, Miami, East
