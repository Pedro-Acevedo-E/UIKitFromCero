//
//  ViewController.swift
//  UIKit_3_UIButton
//
//  Created by Pedro Acevedo on 18/03/23.

import UIKit

class ViewController: UIViewController {
    private let swiftBetaButton1: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.title = "Subscribete a swift beta"
        configuration.subtitle = "Apoya al canal"
        configuration.image = UIImage(systemName: "play.circle.fill")
        
        let button = UIButton(type: .system)
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let swiftBetaButton2: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Subscribete a swift beta"
        configuration.titleAlignment = .center
        configuration.subtitle = "Apoya al canal"
        configuration.image = UIImage(systemName: "play.circle.fill")
        configuration.imagePadding = 12
        configuration.imagePlacement = .trailing
        
        let button = UIButton(type: .system)
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let swiftBetaButton3: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Subscribete a swift beta"
        configuration.titleAlignment = .center
        configuration.subtitle = "Apoya al canal"
        configuration.image = UIImage(systemName: "play.circle.fill")
        configuration.imagePadding = 12
        configuration.imagePlacement = .top
        configuration.buttonSize = .large
        configuration.baseBackgroundColor = .systemPurple
        configuration.baseForegroundColor = .white
        
        let button = UIButton(type: .system)
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var swiftBetaButton4: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Subscribete a swift beta"
        configuration.titleAlignment = .center
        configuration.subtitle = "Apoya al canal"
        configuration.image = UIImage(systemName: "play.circle.fill")
        configuration.imagePadding = 12
        configuration.imagePlacement = .top
        configuration.buttonSize = .large
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.showMessage()
        }))
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(swiftBetaButton1)
        view.addSubview(swiftBetaButton2)
        view.addSubview(swiftBetaButton3)
        view.addSubview(swiftBetaButton4)
        
        NSLayoutConstraint.activate([
            swiftBetaButton1.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            swiftBetaButton1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            swiftBetaButton2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftBetaButton2.topAnchor.constraint(equalTo: swiftBetaButton1.bottomAnchor, constant: 8),
            
            swiftBetaButton3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftBetaButton3.topAnchor.constraint(equalTo: swiftBetaButton2.bottomAnchor, constant: 8),
            
            swiftBetaButton4.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftBetaButton4.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor)
        ])
    }
    
    func showMessage() {
        print("Button tapped!")
    }


}

