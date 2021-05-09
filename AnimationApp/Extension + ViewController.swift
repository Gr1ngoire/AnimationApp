//
//  Extension + ViewController.swift
//  AnimationApp
//
//  Created by admin on 09.05.2021.
//

import Spring


// Extension with the function to set parameters for our animation
extension ViewController {
    
    func giveParams(target:SpringView, infoOutput:UILabel,animationName: String,  duration:CGFloat = 1, scaleX:CGFloat = 1, scaleY:CGFloat = 1) {
        target.duration = duration
        target.scaleX = scaleX
        target.scaleY = scaleY
        
        
        infoOutput.text = "The parameters are name: \(animationName), duration: \(duration), scaleX: \(scaleX), scaleY: \(scaleY)"
    }
}
