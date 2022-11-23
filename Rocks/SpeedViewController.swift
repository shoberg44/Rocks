//
//  SpeedViewController.swift
//  Rocks
//
//  Created by Julie Hoberg on 11/22/22.
//

import UIKit

class SpeedViewController: UIViewController {

    @IBOutlet weak var sleepImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func panGesture(_ sender: UIPanGestureRecognizer) {
        
        var panLoc = sender.location(in: view)
        sleepImage.center = panLoc
    }
    
    @IBAction func longPressAction(_ sender: UILongPressGestureRecognizer) {
        sleepImage.center = sender.location(in: view)
        if sleepImage.isHidden == true {
            sleepImage.isHidden = false
        }
        else{
            sleepImage.isHidden = true
        }
        //sender.state = .possible
    }
}
