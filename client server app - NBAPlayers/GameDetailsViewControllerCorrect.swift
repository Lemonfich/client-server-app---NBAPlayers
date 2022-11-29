//
//  GameDetailsViewControllerCorrect.swift
//  client server app - NBAPlayers
//
//  Created by Сергей on 29.11.2022.
//

import UIKit

class GameDetailsViewControllerCorrect: UIViewController {

    var game :Game?
    
    
    @IBOutlet weak var sLbl1: UILabel!
    
    @IBOutlet weak var sLbl2: UILabel!
    
    @IBOutlet weak var vLbl1: UILabel!
    
    @IBOutlet weak var vLbl2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
          navigationItem.title = game?.status
        navigationController?.navigationBar.prefersLargeTitles = true
    
        var season = game?.season
        var period = game?.period
        vLbl1.text = "\(season!)"
        
       vLbl2.text = "\(period!)"
        
        
        
    }
    

}
