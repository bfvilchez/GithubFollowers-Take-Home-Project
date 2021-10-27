//
//  SearchVC.swift
//  GitHub
//
//  Created by Brian Vilchez on 10/25/21.
//

import UIKit

class SearchVC: UIViewController {

    // MARK: - Properties
    private let logoImageView = UIImageView()
    private let usernameTextField = GHTextField()
    private let searchVCButton = GHButton(backgroundColor: .systemGreen, title: "Get followers")
    
    // MARK: - Initializers
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureLogoImageView()
        configureTextField()
        configureSearchVCButton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    // MARK: - Methods
   private func configureLogoImageView() {
        view.addSubview(logoImageView)
       
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = UIImage(named: "gh-logo-dark")
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            logoImageView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    private func configureTextField() {
        view.addSubview(usernameTextField)
        
        NSLayoutConstraint.activate([
            usernameTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 48),
            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            usernameTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func configureSearchVCButton() {
        view.addSubview(searchVCButton)
        
        NSLayoutConstraint.activate([
            searchVCButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            searchVCButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            searchVCButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            searchVCButton.heightAnchor.constraint(equalToConstant: 50)
        
        ])
    }
}
