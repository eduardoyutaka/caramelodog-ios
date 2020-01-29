//
//  HomeScene.swift
//  CarameloDog
//
//  Created by Eduardo Yutaka Nakanishi on 28/01/2020.
//  Copyright © 2020 Dumon. All rights reserved.
//

import SpriteKit

class HomeScene: GameScene {
    var homeNode: SKNode {
        return childNode(withName: Constants.HomeScene.homeName)!
    }
    
    override func sceneDidLoad() {
        super.sceneDidLoad()
        let homeNode = ButtonNode(imageNamed: Constants.HomeScene.homeButtonNormal)
        homeNode.normalTexture = SKTexture(imageNamed: Constants.HomeScene.homeButtonNormal)
        homeNode.highlightedTexture = SKTexture(imageNamed: Constants.HomeScene.homeButtonHighlighted)
        homeNode.scale(to: Constants.Screen.size)
        homeNode.name = Constants.HomeScene.homeName
        homeNode.isUserInteractionEnabled = true
        homeNode.setCallback {
            self.viewController.presentScene(scene: DoorScene())
        }
        addChild(homeNode)
        
        let arrowNode = SKSpriteNode(imageNamed: "arrow")
        arrowNode.setScale(Constants.Screen.scalingFactor)
        arrowNode.name = Constants.HomeScene.arrowName
        arrowNode.position = CGPoint(x: -120, y: -180)
        addChild(arrowNode)
    }
}
