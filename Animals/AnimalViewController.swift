//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var animalLabel: UILabel!

    var animal: String?

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let animal = animal {
            animalLabel?.text = animal
            
            let emojiFace = emojiTranslate(animal)
            animalLabel?.text = animal
            emojiLabel?.text = emojiFace
            navigationItem.title = animal
        }
    }

        fileprivate func emojiTranslate(_ animal: String) -> String {
            switch animal {
            case "Dog":
                return "🐶"
            case "Cat":
                return "🐱"
            case "Stupid mouse":
                return "🐹"
            case "Bunny":
                return "🐰"
            case "Panda":
                return "🐼"
            case "Lion":
                return "🦁"
            case "Pig":
                return "🐷"
            case "Frog":
                return "🐸"
            case "Octopus":
                return "🐙"
            default:
                return ""
        }
    }
}
