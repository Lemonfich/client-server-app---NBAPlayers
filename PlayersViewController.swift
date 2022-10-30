//
//  PlayersViewController.swift
//  client server app - NBAPlayers
//
//  Created by Сергей on 20.10.2022.
//

import UIKit

class PlayersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let Players: [Player] = [
        
        Player(
            firstName: "Lebron",
            lastName: "James",
            teamName: "Los Angeles Lakers",
            position: "SF",
            height: "6,8"
        ),
        Player(
            firstName: "Anthony",
            lastName: "Davis",
            teamName: "Los Angeles Lakers",
            position: "PF",
            height: "6,6"
        ),
        Player(
            firstName: "jimmy",
            lastName: "Butler",
            teamName: "Miami Heat",
            position: "SG",
            height: "6,6"
        )
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Players"
        navigationController?.navigationBar.prefersLargeTitles = true

    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath)
        
        
        let player = Players [indexPath.row]
        
        cell.textLabel?.text = player.fullname
        cell.detailTextLabel?.text = player.teamName
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let viewController = storyboard.instantiateViewController(withIdentifier: "PlayersDetailsViewController") as! PlayersDetailsViewController
        
        viewController.player = Players [indexPath.row]
        
        navigationController?.pushViewController(viewController, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    

}



