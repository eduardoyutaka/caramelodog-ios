//
//  GameViewController.swift
//  CarameloDog
//
//  Created by Eduardo Yutaka Nakanishi on 19/01/2020.
//  Copyright © 2020 Dumon. All rights reserved.
//

import SpriteKit

class GameViewController: UIViewController {
    
    var skView: SKView {
        get {
            return view as! SKView
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = StartScene()
        
        skView.presentScene(scene)
    }
}
