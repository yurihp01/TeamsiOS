//
//  ListTableViewCell.swift
//  SoccerTeams
//
//  Created by Yuri on 24/05/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    @IBOutlet weak var imageTeam: UIImageView!
    @IBOutlet weak var labelTeam: UILabel!
    @IBOutlet weak var labelCoachName: UILabel!
    
    func config(team: Team) {
        imageTeam.image = UIImage(named: team.image)
        labelTeam.text = team.name
        labelCoachName.text = team.coachName
    }
}
