//
//  CGFloat+SILKAddition.swift
//  SILKLearning
//
//  Created by 张骞 on 2023/6/12.
//

import UIKit

extension CGFloat {
    
    /// 屏幕宽度
    static let screenHeight = UIScreen.main.bounds.height
    /// 屏幕高度
    static let screenWidth = UIScreen.main.bounds.width
    /// 状态栏高度
    static let statusBarHeight = UIApplication.shared.statusBarFrame.height
    /// 导航栏高度
    static let navBarHeight = 44.0 + .statusBarHeight
    /// 底部导航栏高度
    static let tabBarHeight = 49.0
    
    /// 最高的 UI 元素距离顶部的大小
    static let topElementSpacing = 60.0 + .navBarHeight
    /// 最高的按钮距离顶部的大小
    static let topButtonSpacing = 120.0 + .navBarHeight
    /// 元素间的间隔
    static let elementSpacing = 30.0
    
}
