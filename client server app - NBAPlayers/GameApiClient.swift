//
//  GameApiClient.swift
//  client server app - NBAPlayers
//
//  Created by Сергей on 25.11.2022.
//

import Foundation

enum apiGameError: Error {
    case noData
}


protocol GameApiClient {
    func getGames (completion: @escaping (Result <[Game],Error>) -> Void )
}


struct GameApiClietnImpl: GameApiClient {
    
    func getGames (completion: @escaping (Result <[Game],Error>) -> Void ) {
        
        
        let url = URL(string: "https://www.balldontlie.io/api/v1/games")!
        let session = URLSession.shared
        let urlrequest = URLRequest(url:url)
        
        let dataTask = session.dataTask(with: urlrequest, completionHandler:{ data, response, error in
            
            guard let data = data else {
                completion(.failure(apiGameError.noData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let response = try decoder.decode(gamesResponse.self, from: data)
                completion(.success(response.data))
                
            } catch (let error){
                print (error)
                completion(.failure(error))
            }
            
        
        })
        
        dataTask.resume()
    }
}
