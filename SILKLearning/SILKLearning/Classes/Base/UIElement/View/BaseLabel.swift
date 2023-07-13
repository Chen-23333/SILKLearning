//
//  BaseLabel.swift
//  SILKLearning
//
//  Created by 张骞 on 2023/6/11.
//

import UIKit

class BaseLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupDefaultConfig()
    }
    
    convenience init () {
        self.init(frame: .oneLineRect)
    }
    
    convenience init (text: String) {
        self.init(frame: .oneLineRect)
        self.text = text
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupDefaultConfig() {
        font = UIFont.systemFont(ofSize: 20)
        textAlignment = .center
        
        textColor = .black
        backgroundColor = .clear
        
        layer.cornerRadius = self.frame.height * 0.5
        layer.borderWidth = 2
        layer.borderColor = .lightCyanBlue
    }
}
