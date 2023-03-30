//
//  ViewController.swift
//  OnboardingDemo
//
//  Created by Pedro Acevedo on 17/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var subscribeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        subscribeButton.setTitle("Hit me!", for: .normal)
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapSubscribeButton(_ sender: Any) {
        nameLabel.text = "Hello!"
        print("User subscribed")
    }
    
}

