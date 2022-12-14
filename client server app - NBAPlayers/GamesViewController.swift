//
//  GamesViewController.swift
//  client server app - NBAPlayers
//
//  Created by Сергей on 24.11.2022.
//

import Foundation
import UIKit

class GamesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    
    @IBOutlet weak var tableView: UITableView!
    
    var games : [Game] = []
    var gameApiClient : GameApiClient = GameApiClietnImpl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Games"
        navigationController?.navigationBar.prefersLargeTitles = true
        gameApiClient.getGames(completion: { result in
            DispatchQueue.main.async {
                switch result {
                case.success(let games):
                    self.games = games
                case.failure :
                    self.games = []
                }
                self.tableView.reloadData()
            }
            
        })
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "gameCell", for: indexPath)
        
        let game = games [indexPath.row]
        
        cell.textLabel?.text = game.status
        cell.detailTextLabel?.text = "\(game.homeTeam.city) - \(game.visitorTeam.city) | Date: \(game.data)"
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        
        let viewController = storyboard.instantiateViewController(withIdentifier: "GameDetailsViewControllerCorrect") as! GameDetailsViewControllerCorrect
        
       viewController.game = games [indexPath.row]
        
        navigationController?.pushViewController(viewController, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        
          }
    
    
    
}
