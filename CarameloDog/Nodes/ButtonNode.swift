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
    var callback: () -> Void = { }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        texture = highlightedTexture
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let location = touch.location(in: self)
            if (abs(location.x) < size.width / 2 && abs(location.y) < size.height / 2) {
                callback()
            }
        }
        texture = normalTexture
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let location = touch.location(in: self)
            if (abs(location.x) > size.width / 2 || abs(location.y) > size.height / 2) {
                texture = normalTexture
            } else {
                texture = highlightedTexture
            }
        }
    }
    
    func setCallback(callback: @escaping () -> Void) {
        self.callback = callback
    }
}
