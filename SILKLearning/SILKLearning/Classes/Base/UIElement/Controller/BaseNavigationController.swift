//
//  BaseNavigationController.swift
//  SILKLearning
//
//  Created by 张骞 on 2023/4/23.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupConfig()
    }
    
    var isStatusBarHidden = true {
        didSet {
            setNeedsStatusBarAppearanceUpdate()
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return isStatusBarHidden
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if self.children.count == 1 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }
    
    func setupConfig() {
        // 设置导航栏样式
        navigationBar.barTintColor = .frostWhite
        navigationBar.tintColor = UIColor.black
        
        // 标题样式
        let bar = UINavigationBar.appearance()
        bar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor : UIColor.black,
            NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 20)
        ]

        // 设置背景色
        if #available(iOS 13, *) {
            let navBar = UINavigationBarAppearance()
            navBar.backgroundColor = .frostWhite
            navigationBar.standardAppearance = navBar
            navigationBar.scrollEdgeAppearance = navBar
        } else {
            navigationBar.backgroundColor = .frostWhite
        }

        // 设置返回按钮的样式
        let barItem = UIBarButtonItem.appearance()
        barItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.black], for: .normal)
    }
    
    
}

