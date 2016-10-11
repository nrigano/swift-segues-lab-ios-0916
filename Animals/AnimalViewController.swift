//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    var selectedAnimal: String?
    //I think I need to make this a variable in order to succeed
    
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var animalLabel: UILabel!

    override func viewWillAppear(_ animated: Bool) {
        animalLabel.text = selectedAnimal
        
    }
}
