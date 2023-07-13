//
//  BaseButton.swift
//  SILKLearning
//
//  Created by 张骞 on 2023/6/12.
//

import UIKit

class BaseButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupDefaultConfig()
    }
    
    convenience init () {
        self.init(frame: .oneLineRect)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupDefaultConfig() {
        clipsToBounds = true
        layer.cornerRadius = self.frame.height * 0.5
        
        setBackgroundImage(UIImage.BDCDemo_imageWithColor(color: .lightCyanBlue, size: self.frame.size), for: .normal)
        setBackgroundImage(UIImage.BDCDemo_imageWithColor(color: .cyanBlue, size: self.frame.size), for: .highlighted)
        setTitleColor(UIColor.black, for: .normal)
        
        titleLabel?.font = UIFont.systemFont(ofSize: 20)
        titleLabel?.textAlignment = .center
        titleLabel?.numberOfLines = 0
    }

}
