
import Foundation

struct playersResponse: Decodable {
    let data : [Player]
}

struct Player: Decodable {
      
   let firstName: String
   let lastName: String
    
    let team:Team
    let position: String
    
    var height: String {
        if let heightFeet = heightFeet, let heightInches = heightInches{
            return "\(heightFeet)'\(heightInches)''"
        } else {
            return "UnKnown"
        }
    }
    let heightInches: Int?
    let heightFeet: Int?
    
    var fullname: String { firstName + " " + lastName }
    
    
    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case team = "team"
        case position = "position"
        case heightInches = "height_inches"
        case heightFeet = "height_feet"
        
        
    }
    
    
}


let Lakers = Team(name: "Lakers", city: "Los Angeles", conference: "West")
let Heat = Team(name: "Heat", city: "Miami", conference: "East")




//название комыдны, город, конференция
//Lakers, Los Angeles, west
//Heat, Miami, East
