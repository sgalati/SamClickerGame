//
//  FoxStoreViewController.swift
//  CLICKERGAME
//
//  Created by Tyler Dezutter 2020 on 5/13/19.
//  Copyright © 2019 Samantha Galati 2019. All rights reserved.
//

import UIKit
import AVFoundation

class FoxStoreViewController: UIViewController {
    
    //line below brought in from stack overflow
    var AudioPlayer = AVAudioPlayer()

    
    var points:Int = 0
    var pointIncrease:Int = 0
    var increaseCost:Int = 10
    var bonusRabbitCost:Int = 100
    
    @IBOutlet weak var pointsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pointsLabel.text="\(points)"
        
        //lines below brought in from stack overflow
        let AssortedMusics = NSURL(fileURLWithPath: Bundle.main.path(forResource: "WhatDoesTheFoxSay", ofType: "mp3")!)
        AudioPlayer = try! AVAudioPlayer(contentsOf: AssortedMusics as URL)
        AudioPlayer.prepareToPlay()
        AudioPlayer.numberOfLoops = -1
        AudioPlayer.play()
        //lines above brought in from stack overflow
        
    }
    
    
    
    @IBAction func increaseEarningsPressed(_ sender: Any){
        if(points>=increaseCost){
            pointIncrease=pointIncrease*2
            points-=increaseCost
            pointsLabel.text="\(points)"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC=segue.destination as! FoxGameViewController
        destinationVC.points=points
        destinationVC.pointIncrease=pointIncrease
        print(destinationVC.pointIncrease)
        print(pointIncrease)
        
    }
    
}

