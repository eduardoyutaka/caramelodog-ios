//
//  ButtonNode.swift
//  CarameloDog
//
//  Created by Eduardo Yutaka Nakanishi on 19/01/2020.
//  Copyright © 2020 Dumon. All rights reserved.
//

import SpriteKit

class ButtonNode: SKSpriteNode {
    
    var highlightedTexture: SKTexture?
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        texture = highlightedTexture
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        texture = normalTexture
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        texture = normalTexture
    }
}
