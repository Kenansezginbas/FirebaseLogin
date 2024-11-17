//
//  LoginView.swift
//  Swift-Firebase-App
//
//  Created by Kenan Sezginbas on 26.10.2024.
//

import UIKit

class LoginView: UIView {

    var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let emailTextField = SFTextField(placeholder: "Email")
    let passwordTextField = SFTextField(placeholder: "Password")
    let dividerView = SFDividerView()
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        clipsToBounds = true
        layer.cornerRadius = 8
        translatesAutoresizingMaskIntoConstraints = false
    }

}

extension LoginView: UITextFieldDelegate {
    
    func style() {
        backgroundColor = .secondarySystemBackground
        emailTextField.delegate = self
        passwordTextField.delegate = self
       
    }
    
    func layout() {
        stackView.addArrangedSubview(emailTextField)
        stackView.addArrangedSubview(dividerView)
        stackView.addArrangedSubview(passwordTextField)
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1),
            bottomAnchor.constraint(equalToSystemSpacingBelow: stackView.bottomAnchor, multiplier: 1)
            
        ])
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        emailTextField.endEditing(true)
        passwordTextField.endEditing(true)
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        } else {
            return false
        }
        
    }
    
   
}
