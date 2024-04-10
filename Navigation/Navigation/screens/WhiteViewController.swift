//
//  WhiteViewController.swift
//  Navigation
//
//  Created by rendi on 10.04.2024.
//

import UIKit

class WhiteViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupNextButton()
    }
    
    private func setupNextButton() {
        let nextButton = UIButton(type: .system)
        nextButton.setTitle("Next", for: .normal)
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nextButton)
        
        NSLayoutConstraint.activate([
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc private func nextButtonTapped() {
        let yellowVC = YellowViewController()
        navigationController?.pushViewController(yellowVC, animated: true)
    }
}
