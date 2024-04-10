//
//  WellcomeViewController.swift
//  Navigation
//
//  Created by rendi on 10.04.2024.
//

import UIKit

class WellcomeViewController: UIViewController {
    
    // Define the UI components
    let titleLabel = UILabel()
    let signInButton = UIButton(type: .system)
    let signUpButton = UIButton(type: .system)
    let skipButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupUI()
    }
    
    func setupUI() {
        // Configure the title label
        titleLabel.text = "Welcome"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 24)
        view.addSubview(titleLabel)
        
        // Configure and add the Sign In button
        signInButton.setTitle("Sign In", for: .normal)
        signInButton.addTarget(self, action: #selector(signInTapped), for: .touchUpInside)
        view.addSubview(signInButton)
        
        // Configure and add the Sign Up button
        signUpButton.setTitle("Sign Up", for: .normal)
        signUpButton.addTarget(self, action: #selector(signUpTapped), for: .touchUpInside)
        view.addSubview(signUpButton)
        
        // Configure and add the Skip button
        skipButton.setTitle("Skip", for: .normal)
        skipButton.addTarget(self, action: #selector(skipTapped), for: .touchUpInside)
        view.addSubview(skipButton)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        skipButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Auto Layout constraints
        let safeArea = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: signInButton.topAnchor, constant: -40),
            
            signInButton.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            signInButton.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor, constant: -60),
            
            signUpButton.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            signUpButton.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 20),
            
            skipButton.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            skipButton.topAnchor.constraint(equalTo: signUpButton.bottomAnchor, constant: 20)
        ])
    }
    
    // Actions for the buttons
    @objc func signInTapped() {
        navigationController?.pushViewController(SignInViewController(), animated: true)
    }
    
    @objc func signUpTapped() {
        navigationController?.pushViewController(SignUpViewController(), animated: true)
    }
    
    @objc func skipTapped() {
        navigationController?.setViewControllers([MainTabbarViewController()], animated: true)
    }
}
