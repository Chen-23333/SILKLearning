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
        // 开发测试
        let developNavVC = BaseNavigationController(rootViewController: SceneController())
        developNavVC.tabBarItem.title = "开发测试"
        developNavVC.isStatusBarHidden = false
        self.addChild(developNavVC)
        
        // 元素属性
        let propertyNavVC = BaseNavigationController(rootViewController: UIPropertyController())
        propertyNavVC.tabBarItem.title = "元素属性\n预览"
        propertyNavVC.isStatusBarHidden = false
        self.addChild(propertyNavVC)
        
        // 组合样式
        let styleNavVC = BaseNavigationController(rootViewController: BaseViewController())
        styleNavVC.tabBarItem.title = "组合样式\n预览"
        styleNavVC.isStatusBarHidden = false
        self.addChild(styleNavVC)
    }
}
