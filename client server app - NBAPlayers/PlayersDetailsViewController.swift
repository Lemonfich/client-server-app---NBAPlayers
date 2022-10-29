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
    
    
    
    var player: Player?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = player?.fullname
        navigationController?.navigationBar.prefersLargeTitles = true
        positionLable.text = player?.position
        hightLable.text = player?.height



    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
