//
//  ResultInterfaceController.swift
//  RockPaperScissor WatchKit Extension
//
//  Created by vimanshu raj chandra on 13/01/21.
//

import WatchKit
import Foundation


class ResultInterfaceController: WKInterfaceController {
    @IBOutlet var playerChoiceLabel: WKInterfaceLabel!
    
    @IBOutlet var cpuChoiceLabel: WKInterfaceLabel!
    
    @IBOutlet var resultLabel: WKInterfaceLabel!
    
    @IBOutlet var bgGroup: WKInterfaceGroup!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        guard let unwrappedContext = context else
        { return }
        guard let data = context as? Dictionary<String,String> else {
            return
        }
        playerChoiceLabel.setText(data["playerChoice"])
        cpuChoiceLabel.setText(data["cpuChoice"])
        resultLabel.setText(data["result"])
        
        if data["result"] == "You Win!!"{
            bgGroup.setBackgroundColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        }
        else if (data["result"] == "⌚️ won!!") {
            bgGroup.setBackgroundColor(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        }
        else{
            bgGroup.setBackgroundColor(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1))
            
        }
    }
    
    

}
