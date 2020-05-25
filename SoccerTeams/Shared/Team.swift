//
//  Team.swift
//  SoccerTeams
//
//  Created by Yuri on 24/05/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import Foundation

struct Team: Codable {
    let name: String
    let fullName: String
    let foundationYear: UInt16
    let history: String
    let coachName: String
    let image: String
    
    var foundation: String {
        return "Fundação em \(foundationYear)"
    }
}
