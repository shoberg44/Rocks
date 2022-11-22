//
//  AIViewController.swift
//  Rocks
//
//  Created by STEVEN HOBERG on 11/21/22.
//

import UIKit

class AIViewController: UIViewController {

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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    func begin(){
        let randomInt = Int.random(in: 1...3)
        switch randomInt {
        case 1:
            selectionAI = .rock
            AISelectedImage.image = UIImage(named: "rockPic")
        case 2:
            selectionAI = .scissors
            AISelectedImage.image = UIImage(named: "scissorsPic")
        case 3:
            selectionAI = .paper
            AISelectedImage.image = UIImage(named: "paperPic")
        default:
            selectionAI = .unselected
            AISelectedImage.image = UIImage(named: "robot")
        }
        AIdisplay.text = selectionAI.rawValue
        resultLabel.text = AppData.result(selection.rawValue, selectionAI.rawValue)
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
