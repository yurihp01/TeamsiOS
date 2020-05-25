//
//  ListTableViewController.swift
//  SoccerTeams
//
//  Created by Yuri on 24/05/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    var teams: [Team] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadTeams()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? DetailViewController, let row = tableView.indexPathForSelectedRow?.row else { return }
        
        dvc.team = teams[row]
    }
    
    func loadTeams() {
        guard let team = Bundle.main.url(forResource: "teams", withExtension: ".json") else { return }
        
        do {
            let jsonData = try Data(contentsOf: team)
            let jsonDecoder = JSONDecoder()
            jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
            
            teams = try jsonDecoder.decode([Team].self, from: jsonData)
            
            tableView.reloadData()
        } catch let error {
            print(error)
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListTableViewCell else { return UITableViewCell() }
        
        cell.config(team: teams[indexPath.row])

        return cell
    }

}
