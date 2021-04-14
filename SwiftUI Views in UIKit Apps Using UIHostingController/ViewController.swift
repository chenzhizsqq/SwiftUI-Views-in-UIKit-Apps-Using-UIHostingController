//
//  ViewController.swift
//  SwiftUI Views in UIKit Apps Using UIHostingController
//
//  Created by chenzhizs on 2021/04/14.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let controller = UIHostingController(rootView: ContentView())
        controller.view.translatesAutoresizingMaskIntoConstraints = false
        self.addChild(controller)
        self.view.addSubview(controller.view)
        controller.didMove(toParent: self)
        
        NSLayoutConstraint.activate([
            controller.view.widthAnchor.constraint(equalToConstant: 200),
            controller.view.heightAnchor.constraint(equalToConstant: 44),
            controller.view.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            controller.view.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ])
        
    }


}

