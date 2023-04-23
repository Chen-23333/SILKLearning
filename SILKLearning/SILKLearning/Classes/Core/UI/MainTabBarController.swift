//
//  MainTabBarController.swift
//  SILKLearning
//
//  Created by 张骞 on 2023/4/23.
//

import UIKit


class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupConfig()
        setupSubTabBar()
    }
    
    func setupConfig() {
        // 设置字体颜色
        UITabBarItem.appearance().setTitleTextAttributes([
            NSAttributedString.Key.foregroundColor: UIColor.milky,
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18)
        ], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([
            NSAttributedString.Key.foregroundColor: UIColor.cyanBlue,
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18)
        ], for: .selected)
        
        // 设置背景色
        self.tabBar.backgroundColor = .frostWhite
    }
    
    // MARK: - sub tab bar
    func setupSubTabBar() {
        // 功能测试
        let functionTestNavVC = BaseNavigationController(rootViewController: BaseViewController())
        functionTestNavVC.tabBarItem.title = "元素属性"
        functionTestNavVC.isStatusBarHidden = false
        self.addChild(functionTestNavVC)
        
        // 基础信息
        let basicInfoNavVC = BaseNavigationController(rootViewController: BaseViewController())
        basicInfoNavVC.tabBarItem.title = "组合样式"
        basicInfoNavVC.isStatusBarHidden = false
        self.addChild(basicInfoNavVC)
        
        // 通用功能
        let commonFunctionNavVC = BaseNavigationController(rootViewController: BaseViewController())
        commonFunctionNavVC.tabBarItem.title = "测试"
        commonFunctionNavVC.isStatusBarHidden = false
        self.addChild(commonFunctionNavVC)
    }
}
