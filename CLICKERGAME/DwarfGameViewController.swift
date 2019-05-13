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
    func updateLabel2() {
        dwarfLabel.text = String(counter2)
    }
    
    @IBOutlet weak var gifBackground: UIImageView!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        counter2 = 0

         gifBackground.loadGif(name: "SpaceBackground")
        
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var dwarfLabel: UILabel!
    @IBAction func dwarfButtonClicked(_ sender: UIButton) {
        counter2 = counter2 + 1
        updateLabel2()
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
