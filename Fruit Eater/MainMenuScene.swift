//
//  MainMenuScene.swift
//  Fruit Eater
//
//  Created by deore123 on 4/10/17.
//  Copyright © 2017 deore123. All rights reserved.
//

import SpriteKit

class MainMenuScene: SKScene {
    
    // cocoo touch file
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
            
            let location = touch.location(in: self);
            
            if atPoint(location).name == "Start" {
               
                if let scene =  GameplaySceneClass(fileNamed: "GameplayScene") {
                    // Set the scale mode to scale to fit the window
                    scene.scaleMode = .aspectFill
                    
                    // Present the scene
                    view!.presentScene(scene, transition: SKTransition.doorsOpenVertical(withDuration: TimeInterval(1)));
                }

            }
        }
    }

}//class

