//
//  ViewController.swift
//  JSONANIMATION
//
//  Created by Mujahid on 17/10/19.
//  Copyright © 2019 Mujahid. All rights reserved.
//

import UIKit
import Lottie
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let camera = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: nil)
        self.navigationItem.rightBarButtonItem = camera
        
        if let animationView = LOTAnimationView(name: "a") {
            animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
            animationView.center = self.view.center
            animationView.contentMode = .scaleAspectFill
            animationView.loopAnimation = true
            
            view.addSubview(animationView)
        
            animationView.play()
        }
        // Do any additional setup after loading the view.
    }


}

