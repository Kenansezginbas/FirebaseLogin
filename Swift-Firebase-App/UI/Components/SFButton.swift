//
//  SFButton.swift
//  Swift-Firebase-App
//
//  Created by Kenan Sezginbas on 26.10.2024.
//

import UIKit

class SFButton: UIButton {

    init(buttonTitle: String) {
        super.init(frame: .zero)
        self.setTitle(buttonTitle, for: .normal)
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
        backgroundColor = .systemGreen
        layer.cornerRadius = 8
        translatesAutoresizingMaskIntoConstraints = false
    }

}
