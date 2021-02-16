//
//  InterfaceController.swift
//  RockPaperScissor WatchKit Extension
//
//  Created by vimanshu raj chandra on 13/01/21.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

//    override func awake(withContext context: Any?) {
//        // Configure interface objects here.
//    }
//
//    override func willActivate() {
//        // This method is called when watch view controller is about to be visible to user
//    }
//
//    override func didDeactivate() {
//        // This method is called when watch view controller is no longer visible
//    }
    
    
    @IBAction func choseRock() {
        computeData(playerObject: "✊")
    }
    
    @IBAction func chosePaper() {
        computeData(playerObject: "🤚")
    }
    
    @IBAction func choseScissor() {
        computeData(playerObject: "✌️")
    }
    
    func computeData(playerObject: String){
        // it will be making only 3 choices
        let cpuChoice = arc4random_uniform(3)
        var cpuObject: String
        
        if cpuChoice == 0 {
            cpuObject = "✊"
        }else if cpuChoice == 1 {
            cpuObject = "🤚"
        }
        else {
            cpuObject = "✌️"
        }
        var result: String
        // to decide who wins and who loses
        // apple watch wins or you win
        // all the conditions for the player to win
        if playerObject == "✊" && cpuObject == "✌️" || playerObject == "🤚" && cpuObject == "✊" || playerObject == "✌️" && cpuObject == "🤚"  {
            result = "You Win!!"
        }
        else if cpuObject  == "✊" && playerObject == "✌️" || cpuObject == "🤚" && playerObject == "✊" || cpuObject == "✌️" && playerObject == "🤚" {
            result = "⌚️ won!!"
        }
        else{
            result = "it's a TIE!!"
        }
        sendData(playerChoice: playerObject, cpuChoice: cpuObject,result: result)
    }
    
    func sendData(playerChoice: String, cpuChoice: String, result: String){
        //creating a dictionary
        let data=["playerChoice" : playerChoice, "cpuChoice": cpuChoice, "result": result]
        //creating a seway
        pushController(withName: "result", context: data) // with name asks for identifier name
    }
    
}
