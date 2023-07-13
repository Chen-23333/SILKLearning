//
//  DevelopController.swift
//  SILKLearning
//
//  Created by 张骞 on 2023/6/29.
//

import UIKit

class DevelopController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "开发测试"
        
        view.addSubview(boxView)
        view.addSubview(bannerView)
        
        // 重力
        let gravity = UIGravityBehavior(items: [boxView])
        dynamicAnimator.addBehavior(gravity)
        
        // 碰撞检测
        let collision = UICollisionBehavior(items: [boxView])
        collision.translatesReferenceBoundsIntoBoundary = true
        collision.collisionDelegate = self
        
        // 边界
        let path = UIBezierPath(rect: bannerView.frame)
        collision.addBoundary(withIdentifier: "bannerView" as NSCopying, for: path)
        dynamicAnimator.addBehavior(collision)
    }
    
    lazy var boxView: UIView = {
        let pView = UIView(frame: CGRect(x: 200, y: 100, width: 50, height: 50))
        pView.backgroundColor = .lightCyanBlue
        return pView
    }()
    
    lazy var bannerView: UIView = {
        let pView = UIView(frame: CGRect(x: 30, y: 400, width: 180, height: 50))
        pView.backgroundColor = .red
        return pView
    }()
    
    lazy var dynamicAnimator: UIDynamicAnimator = {
        UIDynamicAnimator(referenceView: view)
    }()
}

extension DevelopController: UICollisionBehaviorDelegate {
    
}

