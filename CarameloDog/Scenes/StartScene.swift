//
//  StartScene.swift
//  CarameloDog
//
//  Created by Eduardo Yutaka Nakanishi on 19/01/2020.
//  Copyright © 2020 Dumon. All rights reserved.
//

import SpriteKit

class StartScene: GameScene {
    
    private var logoNode: SKNode {
        return childNode(withName: Constants.StartScreen.logoName)!
    }
    
    private var startButtonNode: SKNode {
        return childNode(withName: Constants.StartScreen.startButtonName)!
    }
    
    override func sceneDidLoad() {
        super.sceneDidLoad()
        backgroundColor = Constants.Colors.lightPink
        
        let logoNode = SKSpriteNode(imageNamed: Constants.StartScreen.Animations.logo0)
        logoNode.name = Constants.StartScreen.logoName
        addChild(logoNode)
        
        let startButtonNode = ButtonNode(imageNamed: Constants.StartScreen.startButtonNormal)
        startButtonNode.name = Constants.StartScreen.startButtonName
        startButtonNode.position = CGPoint(x: 0.0, y: -Constants.Screen.height / 3)
        startButtonNode.normalTexture = SKTexture(imageNamed: Constants.StartScreen.startButtonNormal)
        startButtonNode.highlightedTexture = SKTexture(imageNamed: Constants.StartScreen.startButtonHighlighted)
        startButtonNode.isUserInteractionEnabled = true
        addChild(startButtonNode)
        
        startAnimations()
    }
    
    func startAnimations() {
        let action = SKAction.animate(with: [
            SKTexture(imageNamed: Constants.StartScreen.Animations.logo0),
            SKTexture(imageNamed: Constants.StartScreen.Animations.logo1),
            SKTexture(imageNamed: Constants.StartScreen.Animations.logo2),
            SKTexture(imageNamed: Constants.StartScreen.Animations.logo2),
            SKTexture(imageNamed: Constants.StartScreen.Animations.logo1),
            SKTexture(imageNamed: Constants.StartScreen.Animations.logo0)
        ], timePerFrame: 0.2)
        logoNode.run(SKAction.repeatForever(action))
    }
}
