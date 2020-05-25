//
//  DetailViewController.swift
//  SoccerTeams
//
//  Created by Yuri on 24/05/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var imageTeam: UIImageView!
    @IBOutlet weak var teamFullName: UILabel!
    @IBOutlet weak var fundationYear: UILabel!
    @IBOutlet weak var coachName: UILabel!
    @IBOutlet weak var teamHistory: UITextView!
    
    var team: Team?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let team = team else { return }
            imageTeam.image = UIImage(named: team.image)
            teamFullName.text = team.fullName
            fundationYear.text = team.foundation
            coachName.text = team.coachName
            teamHistory.text = team.history
    }
}

