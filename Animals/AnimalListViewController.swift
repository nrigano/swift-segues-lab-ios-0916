//
//  ViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalListViewController: UITableViewController {
    var animalList = ["Dog", "Cat", "Stupid mouse", "Hamster", "Bunny", "Panda", "Lion", "Pig", "Frog", "Octopus"]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath)
        let animal = animalList[(indexPath as NSIndexPath).row]
        cell.textLabel?.text = animal
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "AnimalDetailView" { return }
        if let dest = segue.destination as? AnimalViewController,
            let indexPath = tableView.indexPathForSelectedRow {
            dest.animal = animalList[(indexPath as NSIndexPath).row]
        }
    }
    
}
