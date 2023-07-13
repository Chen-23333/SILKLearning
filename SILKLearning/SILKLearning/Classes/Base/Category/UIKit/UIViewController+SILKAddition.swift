//
//  UIViewController+SILKAddition.swift
//  SILKLearning
//
//  Created by 张骞 on 2023/6/12.
//

import UIKit

extension UIViewController {
    
//    class func BDCDemo_currentShowingVC() -> UIViewController? {
//        let rootVC = UIWindow.btd.keyWindow?.rootViewController
//        return BDCDemo_findCurrentShowingVC(vc: rootVC)
//    }
//
//    class func BDCDemo_currentNavigationVC() -> UINavigationController? {
//        let rootVC = UIWindow.btd.keyWindow?.rootViewController
//        return BDCDemo_findCurrentNavigationVC(vc: rootVC)
//    }
//
//    private class func BDCDemo_findCurrentShowingVC(vc: UIViewController?) -> UIViewController? {
//        var currentVC: UIViewController?
//
//        if let nextVC = vc?.presentedViewController {
//            currentVC = BDCDemo_findCurrentShowingVC(vc: nextVC)
//        } else if vc is UINavigationController {
//            currentVC = BDCDemo_findCurrentShowingVC(vc: (vc as? UINavigationController)?.visibleViewController)
//        } else if vc is UITabBarController {
//            currentVC = BDCDemo_findCurrentShowingVC(vc: (vc as? UITabBarController)?.selectedViewController)
//        } else {
//            currentVC = vc
//        }
//
//        return currentVC
//    }
//    
//    private class func BDCDemo_findCurrentNavigationVC(vc: UIViewController?) -> UINavigationController? {
//        var currentVC: UINavigationController?
//
//        if let nextVC = vc?.presentedViewController {
//            currentVC = BDCDemo_findCurrentNavigationVC(vc: nextVC)
//        } else if vc is UITabBarController {
//            currentVC = BDCDemo_findCurrentNavigationVC(vc: (vc as? UITabBarController)?.selectedViewController)
//        } else if vc is UINavigationController {
//            currentVC = vc as? UINavigationController
//        }
//
//        return currentVC
//    }
//
}
