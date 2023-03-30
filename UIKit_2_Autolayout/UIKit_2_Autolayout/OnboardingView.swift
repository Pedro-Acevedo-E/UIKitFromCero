//
//  OnboardingView.swift
//  UIKit_2_Autolayout
//
//  Created by Pedro Acevedo on 17/03/23.
//

import Foundation
import UIKit

final class OnboardingView: UIView {
    private let onboardingImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "title")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let textLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Bienvenido a la app de rick and morty"
        label.font = UIFont(name: "Arial Rounded MT Bold", size: 26)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var skipOnboardingButton: UIButton = {
        var config = UIButton.Configuration.filled()
        config.title = "Pulsa aqui para continuar"
        config.subtitle = "Onboarding"
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(showMessage), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        addSubviews()
        configureConstraints()
    }
    
    private func addSubviews() {
        addSubview(onboardingImageView)
        addSubview(textLabel)
        addSubview(skipOnboardingButton)
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            onboardingImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            onboardingImageView.bottomAnchor.constraint(equalTo: textLabel.topAnchor, constant: -42),
            onboardingImageView.widthAnchor.constraint(equalToConstant: 300),
            onboardingImageView.heightAnchor.constraint(equalToConstant: 200),
            
            textLabel.bottomAnchor.constraint(equalTo: skipOnboardingButton.topAnchor, constant: -42),
            textLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            textLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            skipOnboardingButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            skipOnboardingButton.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    @objc func showMessage() {
        print("Skip onboarding")
    }

}
