//
//  ViewController.swift
//  Roll the dice
//
//  Created by Yexiao Wu on 2018-10-03.
//  Copyright © 2018 Emma Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dice1View: UIImageView!
    @IBOutlet weak var dice2View: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateImages()
    }

    fileprivate func updateImages() {
        var imageArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
        dice1View.image = UIImage(named: imageArray[Int.random(in: 0 ... 5)])
        dice2View.image = UIImage(named: imageArray[Int.random(in: 0 ... 5)])
    }
    
    @IBAction func rollButtonClick(_ sender: UIButton) {
        
        updateImages()
    }
    
}

