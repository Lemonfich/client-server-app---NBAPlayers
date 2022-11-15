//
//  ApiClient.swift
//  client server app - NBAPlayers
//
//  Created by Сергей on 05.11.2022.
//

import Foundation

enum apiError: Error {
    case noData
}

protocol ApiClient {
    
    func getPlayers (completion: @escaping (Result <[Player],Error>) -> Void)
    
}

struct apiClientImpl: ApiClient {
    
    
    
    func getPlayers(completion: @escaping (Result<[Player], Error>) -> Void) {
        
        let session = URLSession.shared
        
        let url = URL(string:"https://www.balldontlie.io/api/v1/players")!
        let urlrequest = URLRequest(url: url)
        
        let dataTask = session.dataTask(with: urlrequest, completionHandler: { data ,response , error in
            guard let data = data else {
                
                completion(.failure(apiError.noData))
                return
            }
            do {
                let decoder = JSONDecoder ()
                let response = try decoder.decode(playersResponse.self, from: data )
                completion(.success(response.data))
            }
            catch (let error) {
                print(error)
                completion(.failure(error))
            }
            
            
        })
    
        dataTask.resume()
    }
    
}
