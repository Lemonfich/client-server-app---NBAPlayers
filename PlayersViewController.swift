//
//  PlayersViewController.swift
//  client server app - NBAPlayers
//
//  Created by Сергей on 20.10.2022.
//

import UIKit

class PlayersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var networkLable: UILabel!
    
    @IBOutlet weak var reloadButton: UIButton!
    
    @IBAction func reloadButtonAction(_ sender: Any) {
        reloadData()
    }
    
    
    
    
    
    var players: [Player] = []
    let apiclient: ApiClient = ApiClientImpl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Players"
        navigationController?.navigationBar.prefersLargeTitles = true
    
       reloadData()
        
    }
    
    func reloadData () {
        showLoading ()
        apiclient.getPlayers(completion: { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let players):
                    self.players = players
                    self.showData ()
                case .failure:
                    self.players = []
                    self.showError ()
                    
                }
                self.tableView.reloadData()
            }

        })
    }
    
    
    func showData () {
        activityIndicator.stopAnimating()
        networkLable.isHidden = true
        reloadButton.isHidden = true
    }
    
    func showLoading () {
        networkLable.isHidden = true
        reloadButton.isHidden = true
        activityIndicator.startAnimating()
    }
    
    func showError () {
        self.activityIndicator.stopAnimating()
        self.networkLable.isHidden = false
        self.reloadButton.isHidden = false
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath)
        
        
        let player = players [indexPath.row]
        
        cell.textLabel?.text = player.fullname
        cell.detailTextLabel?.text = player.team.name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        
        let viewController = storyboard.instantiateViewController(withIdentifier: "PlayersDetailsViewController") as! PlayersDetailsViewController
        
        

        viewController.player = players [indexPath.row]
        
        navigationController?.pushViewController(viewController, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    

}



