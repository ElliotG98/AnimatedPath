//
//  ViewController.swift
//  StrokeAnimations
//
//  Created by Elliot Glaze on 29/03/2019.
//  Copyright © 2019 Elliot Glaze. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let path:UIBezierPath = {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 100, y: 100))
//        path.addCurve(to: CGPoint(x: 105, y: 105), controlPoint1: CGPoint(x: 110, y: 100), controlPoint2: CGPoint(x: 108, y: 103))
        
        
        path.addLine(to:CGPoint(x: 100, y: 200 ))
        path.addLine(to: CGPoint(x: 200, y: 200))
        path.addLine(to: CGPoint(x: 200, y: 180))
        path.addLine(to: CGPoint(x: 120, y: 180))
        path.addLine(to: CGPoint(x: 120, y: 160))
        path.addLine(to: CGPoint(x: 200, y: 160))
        path.addLine(to: CGPoint(x: 200, y: 140))
        path.addLine(to: CGPoint(x: 120, y: 140))
        path.addLine(to: CGPoint(x: 120, y: 120))
        path.addLine(to: CGPoint(x: 200, y: 120))
        path.addLine(to: CGPoint(x: 200, y: 100))

        path.close()

        return path
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let layer = CAShapeLayer()
        layer.path = path.cgPath
        
        layer.strokeEnd = 0
        layer.lineWidth = 1
        layer.strokeColor = UIColor.black.cgColor
        layer.fillColor = UIColor.clear.cgColor
        
        
        
        view.layer.addSublayer(layer)
        
        layer.frame = CGRect(x: view.frame.width/2 - 150, y: view.frame.height/2 - 150, width: 150, height: 150)
        
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.toValue = 1
        animation.duration = 1
        animation.fillMode = .forwards
        animation.isRemovedOnCompletion = false
        
        
        layer.add(animation, forKey: "line")
        
        
        
    }


}

