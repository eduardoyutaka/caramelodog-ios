//
//  Constants.swift
//  CarameloDog
//
//  Created by Eduardo Yutaka Nakanishi on 19/01/2020.
//  Copyright © 2020 Dumon. All rights reserved.
//

import UIKit

struct Constants {
    struct Colors {
        static let lightPink = #colorLiteral(red: 1, green: 0.9411764706, blue: 0.9137254902, alpha: 1)
    }
    struct DoorScene {
        static let doorName = "door"
        static let door = "door.png"
    }
    struct HomeScene {
        static let arrowName = "arrow"
        static let homeName = "home"
        static let homeButtonNormal = "home"
        static let homeButtonHighlighted = "home"
    }
    struct StartScene {
        struct Animations {
            static let logo0 = "logo-animation-0.png"
            static let logo1 = "logo-animation-1.png"
            static let logo2 = "logo-animation-2.png"
        }
        static let logoName = "logo"
        static let startButtonNormal = "start-button-normal"
        static let startButtonHighlighted = "start-button-highlighted"
        static let startButtonName = "start-button-normal"
    }
    struct Screen {
        private static let virtualWidth = CGFloat(375.0)
        private static let virtualHeight = CGFloat(812.0)
        static let scalingFactor = UIScreen.main.bounds.width / Constants.Screen.virtualWidth
        static let width = Constants.Screen.virtualWidth * Constants.Screen.scalingFactor
        static let height = Constants.Screen.virtualHeight * Constants.Screen.scalingFactor
        static let size = CGSize(width: Constants.Screen.width, height: Constants.Screen.height)
    }
}
