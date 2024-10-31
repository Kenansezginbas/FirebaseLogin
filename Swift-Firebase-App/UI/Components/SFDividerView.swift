//
//  SFDividerView.swift
//  Swift-Firebase-App
//
//  Created by Kenan Sezginbas on 26.10.2024.
//

import UIKit

class SFDividerView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        backgroundColor = .secondarySystemFill
        heightAnchor.constraint(equalToConstant: 1).isActive = true
        translatesAutoresizingMaskIntoConstraints = false
    }
}
