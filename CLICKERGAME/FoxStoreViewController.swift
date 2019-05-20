//
//  FoxStoreViewController.swift
//  CLICKERGAME
//
//  Created by Tyler Dezutter 2020 on 5/13/19.
//  Copyright © 2019 Samantha Galati 2019. All rights reserved.
//

import UIKit

class FoxStoreViewController: UIViewController {
    var points:Int = 0
    var pointIncrease:Int = 0
    var increaseCost:Int = 10
    var bonusRabbitCost:Int = 100
    @IBOutlet weak var costLabel: UILabel!
    
    @IBOutlet weak var currentMultiplier: UILabel!
    
    @IBOutlet weak var pointsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pointsLabel.text="Points: \(points)"
        costLabel.text="Cost: \(increaseCost)"
        currentMultiplier.text="x\(pointIncrease)"
    }
    
    
    
    @IBAction func increaseEarningsPressed(_ sender: Any){
        if(points>=increaseCost){
            pointIncrease=pointIncrease*2
            points-=increaseCost
            increaseCost*=2
            costLabel.text="Cost: \(increaseCost)"
            pointsLabel.text="Points: \(points)"
            currentMultiplier.text="x\(pointIncrease)"
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC=segue.destination as! FoxGameViewController
        destinationVC.points=points
        destinationVC.pointIncrease=pointIncrease
        destinationVC.increaseCost=increaseCost
        
    }
    
}
