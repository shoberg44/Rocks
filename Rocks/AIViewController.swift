//
//  AIViewController.swift
//  Rocks
//
//  Created by STEVEN HOBERG on 11/21/22.
//

import UIKit

class AIViewController: UIViewController {

    @IBOutlet weak var AIdisplay: UILabel!
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
        begin()
    }
    @IBAction func scissorsButton(_ sender: UIButton) {
        selection = selectionOptions.scissors
        begin()
    }
    @IBAction func paperButton(_ sender: UIButton) {
        selection = selectionOptions.paper
        begin()
    }
    func begin(){
        let randomInt = Int.random(in: 1...3)
        switch randomInt {
        case 1:
            selectionAI = .rock
        case 2:
            selectionAI = .scissors
        case 3:
            selectionAI = .paper
        default:
            selectionAI = .unselected
        }
        AIdisplay.text = selectionAI.rawValue
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
