//
//  UIColor+SILK.swift
//  SILKLearning
//
//  Created by 张骞 on 2023/4/23.
//

import UIKit

extension UIColor {
    /// 霜白色
    static let frostWhite = UIColor(red: 229/255.0, green: 231/255.0, blue: 235/255.0, alpha: 1)
    /// 乳白色
    static let milky = UIColor(red: 211/255.0, green: 215/255.0, blue: 212/255.0, alpha: 1)
    /// 青色
    static let cyanBlue = UIColor(red: 0/255.0, green: 154/255.0, blue: 214/255.0, alpha: 1)
    /// 浅青色
    static let lightCyanBlue = UIColor(red: 175/255.0, green: 223/255.0, blue: 228/255.0, alpha: 1)
    /// 海棠红
    static let begoniaRed = UIColor(red: 240/255.0, green: 55/255.0, blue: 82/255.0, alpha: 1)
}

extension CGColor {
    /// 霜白色
    static let frostWhite = UIColor.frostWhite.cgColor
    /// 乳白色
    static let milky = UIColor.milky.cgColor
    /// 青色
    static let cyanBlue = UIColor.cyanBlue.cgColor
    /// 浅青色
    static let lightCyanBlue = UIColor.lightCyanBlue.cgColor
    /// 海棠红
    static let begoniaRed = UIColor.begoniaRed.cgColor
}
