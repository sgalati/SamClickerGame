//
//  FoxGameViewController.swift
//  CLICKERGAME
//
//  Created by Samantha Galati 2019 on 5/9/19.
//  Copyright © 2019 Samantha Galati 2019. All rights reserved.
//

import UIKit

class FoxGameViewController: UIViewController {
    
    var points = 0
    var pointIncrease = 1
    
    
    @IBOutlet weak var pointsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pointsLabel.text="\(points)"
    }
    
    
    @IBAction func foxTapped(_ sender: Any){
        points+=pointIncrease
        pointsLabel.text="\(points)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC=segue.destination as! FoxStoreViewController
        destinationVC.points=points
        destinationVC.pointIncrease=pointIncrease
    }
}
