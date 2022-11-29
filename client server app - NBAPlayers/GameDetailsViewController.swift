//
//  GameDetailsViewController.swift
//  client server app - NBAPlayers
//
//  Created by Сергей on 26.11.2022.
//


import UIKit





class GameDetailsViewController: UIViewController {
    var game :Game?
    
    @IBOutlet weak var staticLable1: UILabel!
    
    @IBOutlet weak var staticLable2: UILabel!
    
    @IBOutlet weak var varLable1: UILabel!
    
   @IBOutlet weak var varLable2: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 //   navigationItem.title = game?.status
       //navigationController?.navigationBar.prefersLargeTitles = true
       // varLable1.text = "\(game?.season)"
      //  varLable2.text = "\(game?.period)"

    }
    
    
    
    
    
}
