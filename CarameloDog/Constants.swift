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
    struct StartScreen {
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
        static let height = UIScreen.main.bounds.height
        static let size = UIScreen.main.bounds.size
        static let width = UIScreen.main.bounds.width
    }
}
