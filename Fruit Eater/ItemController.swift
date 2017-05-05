//
//   ItemController.swift
//  Fruit Eater
//
//  Created by deore123 on 4/10/17.
//  Copyright © 2017 deore123. All rights reserved.
//


import SpriteKit

//swift file

// creating category bitmask for fruits
struct ColliderType {

    static let PLAYER: UInt32 = 0;
    static let FRUIT_AND_BOMB: UInt32 = 1;
    
}
class ItemController {
    
    private var minX = CGFloat(-200), maxX = CGFloat(200);
    
    func  spawnItems() -> SKSpriteNode {
        
        let item: SKSpriteNode?;
        
        
        
        if Int(randomBetweenNumbers(firstNum: 0, secondNum: 10)) >= 6
        {
            item = SKSpriteNode(imageNamed: "Bomb");
            item!.name = "Bomb";
            item!.setScale(0.6);
            item?.physicsBody = SKPhysicsBody(circleOfRadius: item!.size.height / 2 );
            
        } else {
            
            let  num = Int(randomBetweenNumbers(firstNum: 1, secondNum: 5));
            
            item = SKSpriteNode(imageNamed: "Fruit \(num)");
            item!.name = "Fruit";
            item!.setScale(0.7);
            item?.physicsBody = SKPhysicsBody(circleOfRadius:  item!.size.height / 2);
            
        }
        
        item!.physicsBody?.categoryBitMask  = ColliderType.FRUIT_AND_BOMB;
        
        item!.zPosition = 3;
        item!.anchorPoint = CGPoint(x: 0.5, y: 0.5);
        
        item!.position.x = randomBetweenNumbers(firstNum: minX, secondNum: maxX);
        item!.position.y = 500;
        
        return item!;
    }
    
    func randomBetweenNumbers(firstNum: CGFloat, secondNum: CGFloat) -> CGFloat
    {
        
        
        return CGFloat(arc4random()) / CGFloat( UINT32_MAX) *  abs(firstNum - secondNum ) + min(firstNum, secondNum) ;
    }
    
}//class

