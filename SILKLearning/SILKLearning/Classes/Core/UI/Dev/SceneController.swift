//
//  SceneController.swift
//  SILKLearning
//
//  Created by 张骞 on 2023/6/29.
//

import UIKit
import SceneKit

class SceneController: BaseViewController {
    
    var spawnTime: TimeInterval = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(scnView)
        view.addSubview(testButton)
        testButton.frame.origin = CGPoint(x: 70, y: 670)
        
        // 创建几何体
        let geometry: SCNGeometry = SCNBox(width: 8.0, height: 0.1, length: 8.0, chamferRadius: 0.0)
        geometry.materials.first?.diffuse.contents = UIColor.random()

        // 创建地板
        let geometryNode = SCNNode(geometry: geometry)
        
        // 添加物理效果
        geometryNode.physicsBody = SCNPhysicsBody(type: .static, shape: nil)

        scnScene.rootNode.addChildNode(geometryNode)
    }
    
    func spawnBoxShape() {
        // 创建几何体
        let geometry: SCNGeometry = SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.0)
        geometry.materials.first?.diffuse.contents = UIColor.random()

        // 创建场景节点
        let geometryNode = SCNNode(geometry: geometry)
//        geometryNode.position = SCNVector3(x: Float.random(in: -10...10), y: Float.random(in: -10...10), z: Float.random(in: -10...0))
        
        // 添加物理效果
        geometryNode.physicsBody = SCNPhysicsBody(type: .dynamic, shape: nil)
        
        // 添加随机的力
        let randomX = Float.random(min: -2, max: 2)
        let randomY = Float.random(min: 5, max: 20)
        let force = SCNVector3(x: randomX, y: randomY , z: 0)
        let position = SCNVector3(x: 0.05, y: 0.05, z: 0.05)
        geometryNode.physicsBody?.applyForce(force, at: position, asImpulse: true)
        
        scnScene.rootNode.addChildNode(geometryNode)
    }
    
    func cleanScene() {
        for node in scnScene.rootNode.childNodes {
            if node.presentation.position.y < -2 {
                node.removeFromParentNode()
            }
        }
    }
    
    @objc
    private func didTapTestButton(button: UIButton) {
        for _ in 1...5 {
            spawnBoxShape()
        }
    }
    
    lazy var testButton: UIButton = {
        let button = BaseButton()
        button.setTitle("test", for: .normal)
        button.addTarget(self, action: #selector(didTapTestButton), for: .touchUpInside)
        return button
    }()
    
    lazy var scnView: SCNView = {
        let scnView = SCNView(frame: view.bounds)
        scnView.scene = scnScene
        scnView.showsStatistics = true
        scnView.allowsCameraControl = false
        scnView.autoenablesDefaultLighting = true
        scnView.delegate = self
        
        // This forces the SceneKit view into an endless playing mode.
        scnView.isPlaying = true
        
        return scnView
    }()
    
    lazy var scnScene: SCNScene = {
        let scene = SCNScene()
        scene.background.contents = UIColor.yellow
        scene.rootNode.addChildNode(cameraNode)
        return scene
    }()
    
    lazy var cameraNode: SCNNode = {
        let node = SCNNode()
        node.camera = SCNCamera()
        node.position = SCNVector3(x: 0, y: 5, z: 30)
        return node
    }()
    
}

extension SceneController: SCNSceneRendererDelegate {
    
    // Step 1: Update
    func renderer(_ renderer: SCNSceneRenderer, updateAtTime time: TimeInterval) {
        if time > spawnTime {
            spawnBoxShape()
            spawnTime = time + TimeInterval(Float.random(min: 0.2, max: 1))
        }
        cleanScene()
    }
    // Step 2: Execute Actions & Animations
    
    // Step 3: Did Apply Animations
    func renderer(_ renderer: SCNSceneRenderer, didApplyAnimationsAtTime time: TimeInterval) {
        
    }
    
    // Step 4: Simulates Physics
    
    // Step 5: Did Simulate Physics
    func renderer(_ renderer: SCNSceneRenderer, didSimulatePhysicsAtTime time: TimeInterval) {
        
    }
    
    // Step 6: Evaluates Constraints
    func renderer(_ renderer: SCNSceneRenderer, didApplyConstraintsAtTime time: TimeInterval) {
       
    }
    
    // Step 7: Will Render Scene
    func renderer(_ renderer: SCNSceneRenderer, willRenderScene scene: SCNScene, atTime time: TimeInterval) {
        
    }
    
    // Step 8: Renders Scene In View
    
    // Step 9: Did Render Scene
    func renderer(_ renderer: SCNSceneRenderer, didRenderScene scene: SCNScene, atTime time: TimeInterval) {
        
    }
    
}

class motionManager {
    
    init() {
        
    }
    
}
