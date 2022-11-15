//
//  Team.swift
//  client server app - NBAPlayers
//
//  Created by Сергей on 30.10.2022.
//

import Foundation


struct Team: Decodable {
    
    let name: String
    let city: String
    let conference: String
    var fullName:String {city + " " + name }

    
}
