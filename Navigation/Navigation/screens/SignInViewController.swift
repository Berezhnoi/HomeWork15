//
//  SignInViewController.swift
//  Navigation
//
//  Created by rendi on 10.04.2024.
//

import UIKit

class SignInViewController: UIViewController {
    
    // UI Components
    let titleLabel = UILabel()
    let emailTextField = UITextField()
    let passwordTextField = UITextField()
    let goButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupUI()
    }
    
    func setupUI() {
        configureTitleLabel()
        configureTextField(emailTextField, placeholder: "Email")
        configureTextField(passwordTextField, placeholder: "Password", isSecure: true)
        
        goButton.setTitle("Go", for: .normal)
        goButton.addTarget(self, action: #selector(goButtonTapped), for: .touchUpInside)
        goButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(goButton)
        
        // Constraints
        let margins = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: margins.topAnchor, constant: 40),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            emailTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 40),
            emailTextField.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            emailTextField.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
            
            goButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            goButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func configureTitleLabel() {
        titleLabel.text = "Sign In"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 24)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)
    }
    
    func configureTextField(_ textField: UITextField, placeholder: String, isSecure: Bool = false) {
        textField.placeholder = placeholder
        textField.borderStyle = .roundedRect
        textField.autocapitalizationType = .none
        textField.isSecureTextEntry = isSecure
        textField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(textField)
    }
    
    @objc func goButtonTapped() {
        navigationController?.setViewControllers([MainTabbarViewController()], animated: true)
    }
}

