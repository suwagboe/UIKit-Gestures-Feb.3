//
//  GesturesTabController.swift
//  UIKit Gestures Feb.3
//
//  Created by Pursuit on 2/3/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class GesturesTabController: UITabBarController {
    
    private lazy var tapGestureVC: TapGestureController = {
        // need a storyboard instance
        let storyboard = UIStoryboard(name: "TapGesture", bundle: nil)
        // need an instance from storyboard
        guard let viewController = storyboard.instantiateViewController(identifier: "TapGestureController") as? TapGestureController else {
            fatalError("could not downcast to this")
        }
        return viewController
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
       viewControllers = [tapGestureVC, SwipeGestureController()]
    }
    

}
