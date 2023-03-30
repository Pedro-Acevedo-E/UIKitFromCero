//
//  ViewController.swift
//  UIKit_2_Autolayout
//
//  Created by Pedro Acevedo on 17/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func loadView() {
        self.view = OnboardingView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    
}

