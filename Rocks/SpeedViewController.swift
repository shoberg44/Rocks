//
//  SpeedViewController.swift
//  Rocks
//
//  Created by Julie Hoberg on 11/22/22.
//

import UIKit

class SpeedViewController: UIViewController {
    
    
    @IBOutlet weak var selectionAILabel: UILabel!
    @IBOutlet weak var selectionAIPic: UIImageView!
    @IBOutlet weak var selectionUserLabel: UILabel!
    @IBOutlet weak var selectionUserPic: UIImageView!
    
    var averageSpeed : Double = 0
    var streak : Int = 0
    var selection : selectionOptions = .unselected
    var selectionAI : selectionOptions = .unselected
    enum selectionOptions : String{
        case rock = "Rock"
        case paper = "Paper"
        case scissors = "Scissors"
        case unselected = "Unselected"//unused
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func rockButton(_ sender: UIButton) {
        selection = selectionOptions.rock
        //UIImage.Orientation = .upMirrored
        selectionUserPic.image = UIImage(named: "rockPic")
        begin()
    }
    @IBAction func scissorsButton(_ sender: UIButton) {
        selection = selectionOptions.scissors
        selectionUserPic.image = UIImage(named: "scissorsPic")
        begin()
    }
    @IBAction func paperButton(_ sender: UIButton) {
        selection = selectionOptions.paper
        selectionUserPic.image = UIImage(named: "paperPic")
        begin()
    }
    func begin(){
        let randomInt = Int.random(in: 1...3)
        switch randomInt {
        case 1:
            selectionAI = .rock
            selectionAIPic.image = UIImage(named: "rockPic")
        case 2:
            selectionAI = .scissors
            selectionAIPic.image = UIImage(named: "scissorsPic")
        case 3:
            selectionAI = .paper
            selectionAIPic.image = UIImage(named: "paperPic")
        default:
            selectionAI = .unselected
            selectionAIPic.image = UIImage(named: "robot")
        }
        selectionAILabel.text = selectionAI.rawValue //changes onscreen ai selection label to emnum based value
        selectionUserLabel.text = selection.rawValue //above but with user label
        //resultLabel.text = AppData.result(selection.rawValue, selectionAI.rawValue) //calculates result with satic function result()
    }
}
