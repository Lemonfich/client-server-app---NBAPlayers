//
//  Games(struct).swift
//  client server app - NBAPlayers
//
//  Created by Сергей on 24.11.2022.
//



import Foundation

struct gamesResponse: Decodable {
    let data : [Game]
}


struct Game: Decodable {
    
    let data : String?
    let homeTeam : HomeTeam
    let homeTeamScore : Int
    let period : Int
    let season : Int
    let status : String
    let visitorTeam : VisitorTeam
    let visitorTeamScore : Int
    
    enum CodingKeys: String, CodingKey {
    case  data = "date"
    case  homeTeam = "home_team"
    case  homeTeamScore = "home_team_score"
    case  period = "period"
    case  season = "season"
    case  status = "status"
    case  visitorTeam = "visitor_team"
    case  visitorTeamScore = "visitor_team_score"
    }
}




