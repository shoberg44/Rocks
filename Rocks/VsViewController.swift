//
//  VsViewController.swift
//  Rocks
//
//  Created by STEVEN HOBERG on 11/22/22.
//

import UIKit

class VsViewController: UIViewController {
    
    @IBOutlet weak var selection1Icon: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var selection2Icon: UIImageView!
    @IBOutlet weak var playerLabel: UILabel!
    @IBOutlet weak var player1ScoreLabel: UILabel!
    @IBOutlet weak var player2ScoreLabel: UILabel!
    
    var selectionP1 : selectionOptions = .unselected
    var selectionP2 : selectionOptions = .unselected
    var isFirstPlayer = true //keeps track of player turns
    var scoreboard : (Int,Int) = (0,0) //keeps score of seesion
    let multipler = 5 //default 1
    
    enum selectionOptions : String{
        case rock = "Rock"
        case paper = "Paper"
        case scissors = "Scissors"
        case unselected = "Unselected"//unused
    }
    
    //

    @IBAction func rockButton(_ sender: UIButton) {
        if isFirstPlayer{
            selectionP1 = selectionOptions.rock
            isFirstPlayer = false
            phaseUpdate()
        }
        else{
            selectionP2 = selectionOptions.rock
            convertVS()
        }
        //UIImage.Orientation = .upMirrored
    }
    @IBAction func scissorsButton(_ sender: UIButton) {
        if isFirstPlayer{
            selectionP1 = selectionOptions.scissors
            isFirstPlayer = false
            phaseUpdate()
        }
        else{
            selectionP2 = selectionOptions.scissors
            convertVS()
        }
    }
    @IBAction func paperButton(_ sender: UIButton) {
        if isFirstPlayer{
            selectionP1 = selectionOptions.paper
            isFirstPlayer = false
            phaseUpdate()
        }
        else{
            selectionP2 = selectionOptions.paper
            convertVS()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func convertVS(){
        if AppData.result(selectionP1.rawValue, selectionP2.rawValue) == "You Win"{
            resultLabel.text = "Player 1 Wins!"
            scoreboard.0 += (1 * multipler)
        }
        else if AppData.result(selectionP1.rawValue, selectionP2.rawValue) == "You Lose"{
            resultLabel.text = "Player 2 Wins!"
            scoreboard.1 += (1 * multipler)
        }
        else{
            resultLabel.text = AppData.result(selectionP1.rawValue, selectionP2.rawValue)
        }
        isFirstPlayer = true
        phaseUpdate()
        updateScore()
    }
    func phaseUpdate(){
        if isFirstPlayer{
            selection1Icon.isHidden = false
            selection2Icon.isHidden = true
            playerLabel.text = "Player 1"
        }
        else{
            selection1Icon.isHidden = true
            selection2Icon.isHidden = false
            playerLabel.text = "Player 2"
        }
    }
    func updateScore(){
        player1ScoreLabel.text = String(scoreboard.0)
        player2ScoreLabel.text = String(scoreboard.1)
    }
}
