//
//  FoxGameViewController.swift
//  CLICKERGAME
//
//  Created by Samantha Galati 2019 on 5/9/19.
//  Copyright © 2019 Samantha Galati 2019. All rights reserved.
//

import UIKit

class FoxGameViewController: UIViewController {
    
    var counter: Int!
    func updateLabel() {
    foxLabel.text = String(counter)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 0

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var foxLabel: UILabel!
    
    @IBAction func foxButtonClicked(_ sender: UIButton) {
        counter = counter + 1
        updateLabel()
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
