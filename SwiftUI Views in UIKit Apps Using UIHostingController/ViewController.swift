//
//  ViewController.swift
//  SwiftUI Views in UIKit Apps Using UIHostingController
//
//  Created by chenzhizs on 2021/04/14.
//

import UIKit
import SwiftUI
import Combine

class ViewController: UIViewController {
    
    private var cancellabe : AnyCancellable!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let delegate = ContentViewDelegate()
        
        let controller = UIHostingController(rootView: ContentView(delegate: delegate))
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
        
        self.cancellabe = delegate.$name.sink {
            name in print(name)
            
        }
        
    }


}

