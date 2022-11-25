//
//  VisitorTeam.swift
//  client server app - NBAPlayers
//
//  Created by Сергей on 25.11.2022.
//

import Foundation


struct VisitorTeam: Decodable {

   let abbreviation : String
   let city : String
   let conference : String
   let division : String
   let name : String
}
