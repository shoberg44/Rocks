//
//  ViewController.swift
//  Rocks
//
//  Created by STEVEN HOBERG on 11/16/22.
//

import UIKit
class AppData{
    static func result(_ s1: String,_ s2: String) -> String { //s1=you s2=opponent ; accepts strings Rock,Paper,Scissors
        if (s1 == "Rock"){
            if s2 == "Rock"{
                return "Tie"
            }
            else if s2 == "Paper"{
                return "You Lose"
            }
            else if s2 == "Scissors"{
                return "You Win"
            }
            else{
                return "Invalid"
            }
        }
        else if(s1 == "Paper"){
            if s2 == "Rock"{
                return "You Win"
            }
            else if s2 == "Paper"{
                return "Tie"
            }
            else if s2 == "Scissors"{
                return "You Lose"
            }
            else{
                return "Invalid"
            }
        }
        else if(s1 == "Scissors"){
            if s2 == "Rock"{
                return "You Lose"
            }
            else if s2 == "Paper"{
                return "You Win"
            }
            else if s2 == "Scissors"{
                return "Tie"
            }
            else{
                return "Invalid"
            }
        }
        else{
            return "Invalid"
        }
    }
}
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

}

