//
//  SFTextField.swift
//  Swift-Firebase-App
//
//  Created by Kenan Sezginbas on 26.10.2024.
//

import UIKit

class SFTextField: UITextField {

    init(placeholder: String, keyboardType: UIKeyboardType = .default, isSecureTexteEntry: Bool = false) {
        super.init(frame: .zero)
        self.placeholder        = placeholder
        self.keyboardType       = keyboardType
        self.isSecureTextEntry  = isSecureTexteEntry
        configure()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
    }

}
