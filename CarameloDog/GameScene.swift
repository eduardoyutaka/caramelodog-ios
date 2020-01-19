//
//  GameScene.swift
//  CarameloDog
//
//  Created by Eduardo Yutaka Nakanishi on 19/01/2020.
//  Copyright © 2020 Dumon. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func sceneDidLoad() {
        self.size = Constants.Screen.size
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
    }
}
