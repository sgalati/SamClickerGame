//
//  DwarfGameViewController.swift
//  CLICKERGAME
//
//  Created by Samantha Galati 2019 on 5/9/19.
//  Copyright © 2019 Samantha Galati 2019. All rights reserved.
//

import UIKit

class DwarfGameViewController: UIViewController {
    var counter2: Int!
    var clicks: Int!
    var cost: Int!
    var upgrades: Int!
    func updateLabel2() {
        dwarfLabel.text = String(counter2)
    }
    
    @IBOutlet weak var gifBackground: UIImageView!
    
    @IBOutlet weak var upgradeText: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        counter2 = 0
        
        gifBackground.loadGif(name: "SpaceBackground")
        cost = 50
        clicks = 1
        upgrades = 0
        upgradeText.text = "Cost: \(cost!)"
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var dwarfLabel: UILabel!
    @IBAction func dwarfButtonClicked(_ sender: UIButton) {
        counter2 = counter2 + clicks
        updateLabel2()
    }
    
    @IBAction func upgradeButton(_ sender: UIButton) {
        if upgrades == 0
        {
            if counter2 >= 50 {
                counter2 = counter2 - 50
                clicks = 2
                cost = 120
                upgrades = 1
                upgradeText.text = "Cost: \(cost!)"
                updateLabel2()
            }
        }
        else if upgrades == 1
        {
            if counter2 >= 120 {
                counter2 = counter2 - 120
                clicks = 4
                cost = 300
                upgrades = 2
                upgradeText.text = "Cost: \(cost!)"
                updateLabel2()
            }
        }
        else if upgrades == 2
        {
            if counter2 >= 300 {
                counter2 = counter2 - 300
                clicks = 10
                cost = 1000
                upgrades = 3
                upgradeText.text = "Cost: \(cost!)"
                updateLabel2()
            }
        }
        else if upgrades == 3
        {
            if counter2 >= 1000 {
                counter2 = counter2 - 1000
                clicks = 25
                cost = 2500
                upgrades = 4
                upgradeText.text = "Get red dwarf: \(cost!)"
                updateLabel2()
            }
        }
        
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
