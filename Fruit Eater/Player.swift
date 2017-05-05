//
//  Player.swift
//  Fruit Eater
//
//  Created by Supriya Deore on 4/10/17.
//  Copyright © 2017 Supriya Deore. All rights reserved.
//

import SpriteKit

// swift file

class Player: SKSpriteNode {
    
    private var minX = CGFloat(-200), maxX = CGFloat(200);
    
    //adding physics body to the player
    func initializePlayer() {
        
        name = "Player";
        
        physicsBody = SKPhysicsBody(circleOfRadius: size.height / 2);
        physicsBody?.affectedByGravity = false;
        // we making it false because we dont want to fall our player at the start of the game
        
        physicsBody?.isDynamic = false;
        // it means we are static and can not be pushed.
        
        physicsBody?.categoryBitMask = ColliderType.PLAYER;
        physicsBody?.contactTestBitMask = ColliderType.FRUIT_AND_BOMB;
        
        
    }
    
    func move(left: Bool)
    {
        if left
        {
            position.x -= 15;
            
            if position.x < minX {
                
                position.x = minX;
            }
            
        } else {
            
            position.x += 15;
            
            if position.x > maxX {
                
                position.x = maxX;
            }
        }
        
    }
    
     
    
}// class
