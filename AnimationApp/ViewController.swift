//
//  ViewController.swift
//  AnimationApp
//
//  Created by admin on 08.05.2021.
//

import Spring

class ViewController: UIViewController {

    // required outlets
    @IBOutlet weak var mainView: SpringView!
    @IBOutlet weak var mainButton: SpringButton!
    @IBOutlet weak var infoOuputLabel: UILabel!
    
    

    // animations array
    private let animations = [
        "pop",
        "squeeze",
        "swing",
        "flipY",
        "wobble",
        "zoomIn"
    ]
    
    // animation index
    private var animIndex = 0
    
    @IBAction func startViewAnimation(_ sender: SpringButton) {
        
        // adding animation for mainView and mainButton
        mainView.animation = animations[animIndex]
        mainButton.animation = animations[animIndex]
        
        // setting parameters for the mainView animation according to the situation
        switch animations[animIndex] {
        case "pop":
            giveParams(target: mainView, infoOutput: infoOuputLabel, animationName: "pop", duration: 3, scaleX: 1.5, scaleY: 1.5)
        case "squeeze":
            giveParams(target: mainView, infoOutput: infoOuputLabel, animationName: "squeeze", duration: 2, scaleX: 1.25, scaleY: 1.25)
        case "swing":
            giveParams(target: mainView, infoOutput: infoOuputLabel, animationName: "swing", duration: 1.6, scaleX: 1, scaleY: 1)
        case "flipY":
            giveParams(target: mainView, infoOutput: infoOuputLabel, animationName: "flipY", duration: 1, scaleX: 1, scaleY: 1)
        case "wobble":
            giveParams(target: mainView, infoOutput: infoOuputLabel, animationName: "wobble", duration: 4, scaleX: 1.25, scaleY: 1.25)
        case "zoomIn":
            giveParams(target: mainView, infoOutput: infoOuputLabel, animationName: "zoomIn", duration: 4.5, scaleX: 1.4, scaleY: 1.4)
        default:
            giveParams(target: mainView, infoOutput: infoOuputLabel,  animationName: "No animation")
        }
        
        // index error check up
        if animIndex < animations.count - 1 {
            animIndex += 1
        } else {
            animIndex = 0
        }
        
        // next animation name
        mainButton.setTitle("Next: \(animations[animIndex])", for: .normal)
        
        // animating mainView and mainButton
        mainView.animate()
        mainButton.animate()
    }
    

}

