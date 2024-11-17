//
//  LoginVC.swift
//  Swift-Firebase-App
//
//  Created by Kenan Sezginbas on 26.10.2024.
//

import UIKit

class LoginVC: UIViewController {
    
    let loginView = LoginView()
    let signInButton = SFButton(buttonTitle: "Sign In")
    let errorMessage = SFLabel(text: "", color: .systemRed)
    
    var email: String? {
        return loginView.emailTextField.text
    }
    
    var password: String? {
        return loginView.passwordTextField.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
    
    
}


extension LoginVC {
    
    func style() {
        view.backgroundColor = .systemBackground
        errorMessage.isHidden = true
        signInButton.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
    }
    
    func layout() {
        view.addSubview(loginView)
        view.addSubview(signInButton)
        view.addSubview(errorMessage)
        
        NSLayoutConstraint.activate([
            
            // MARK: Login View
            loginView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: loginView.trailingAnchor, multiplier: 2),
            view.centerYAnchor.constraint(equalTo: loginView.centerYAnchor),
            
            // MARK: Sign In Button
            signInButton.topAnchor.constraint(equalToSystemSpacingBelow: loginView.bottomAnchor, multiplier: 2),
            signInButton.leadingAnchor.constraint(equalTo: loginView.leadingAnchor),
            signInButton.trailingAnchor.constraint(equalTo: loginView.trailingAnchor),
            
            // MARK: Error Message
            errorMessage.topAnchor.constraint(equalToSystemSpacingBelow: signInButton.bottomAnchor, multiplier: 2),
            errorMessage.leadingAnchor.constraint(equalTo: loginView.leadingAnchor),
            errorMessage.trailingAnchor.constraint(equalTo: loginView.trailingAnchor)
            
        ])
        
    }
    
    @objc func signInButtonTapped() {
        print("Sign In Button Tapped")
        login()
        
    }
    
    func login() {
        guard let email = email, let password = password else {
            return
        }
        
        if email.isEmpty || password.isEmpty {
            showErrorMessage(message: "Please enter your email and password")
            return
       }
    
        
        
        func showErrorMessage(message: String) {
            errorMessage.text = message
            errorMessage.isHidden = false
        }
        
    }
}
