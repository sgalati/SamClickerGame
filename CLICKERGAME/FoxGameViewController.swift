//
//  FoxGameViewController.swift
//  CLICKERGAME
//
//  Created by Samantha Galati 2019 on 5/9/19.
//  Copyright © 2019 Samantha Galati 2019. All rights reserved.
//

import UIKit
import AVFoundation

class FoxGameViewController: UIViewController {
    
    //line below brought in from stack overflow
    var AudioPlayer = AVAudioPlayer()
    
    var points = 0
    var pointIncrease = 1
    
    
    @IBOutlet weak var pointsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pointsLabel.text="\(points)"
        
        //lines below brought in from stack overflow
        //let AssortedMusics = NSURL(fileURLWithPath: Bundle.main.path(forResource: "WhatDoesTheFoxSay", ofType: "mp3")!)
        //AudioPlayer = try! AVAudioPlayer(contentsOf: AssortedMusics as URL)
        //AudioPlayer.prepareToPlay()
        //AudioPlayer.numberOfLoops = -1
        //AudioPlayer.play()
        //lines above brought in from stack overflow
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
