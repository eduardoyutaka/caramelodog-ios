//
//  DoorScene.swift
//  CarameloDog
//
//  Created by Eduardo Yutaka Nakanishi on 20/01/2020.
//  Copyright © 2020 Dumon. All rights reserved.
//

import SpriteKit

class DoorScene: GameScene {
    var doorNode: SKNode {
        return childNode(withName: Constants.DoorScene.doorName)!
    }
    
    override func sceneDidLoad() {
        super.sceneDidLoad()
        let doorNode = SKSpriteNode(imageNamed: Constants.DoorScene.door)
        doorNode.scale(to: Constants.Screen.size)
        doorNode.name = Constants.DoorScene.doorName
        doorNode.isUserInteractionEnabled = true
        addChild(doorNode)
    }
}
