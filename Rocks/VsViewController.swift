//
//  VsViewController.swift
//  Rocks
//
//  Created by STEVEN HOBERG on 11/22/22.
//

import UIKit

class VsViewController: UIViewController {
    
    @IBOutlet weak var userSelectedImage: UIImageView!
    @IBOutlet weak var AIdisplay: UILabel!
    @IBOutlet weak var AISelectedImage: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    var score : Int = 0
    var streak : Int = 0
    var selection : selectionOptions = .unselected
    var selectionAI : selectionOptions = .unselected
    
    enum selectionOptions : String{
        case rock = "Rock"
        case paper = "Paper"
        case scissors = "Scissors"
        case unselected = "Unselected"//unused
    }
    
    
    @IBAction func rockButton(_ sender: UIButton) {
        selection = selectionOptions.rock
        //UIImage.Orientation = .upMirrored
        userSelectedImage.image = UIImage(named: "rockPic")
        begin()
    }
    @IBAction func scissorsButton(_ sender: UIButton) {
        selection = selectionOptions.scissors
        userSelectedImage.image = UIImage(named: "scissorsPic")
        begin()
    }
    @IBAction func paperButton(_ sender: UIButton) {
        selection = selectionOptions.paper
        userSelectedImage.image = UIImage(named: "paperPic")
        begin()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
