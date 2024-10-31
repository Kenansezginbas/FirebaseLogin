//
//  SFLabel.swift
//  Swift-Firebase-App
//
//  Created by Kenan Sezginbas on 31.10.2024.
//

import UIKit

class SFLabel: UILabel {

    init(text: String, textAlignment: NSTextAlignment = .left, fontSize: CGFloat = 14, color: UIColor = .black) {
        super.init(frame: .zero)
        self.text = text
        self.textAlignment = textAlignment
        self.font =  UIFont.systemFont(ofSize: fontSize)
        self.textColor = color
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
