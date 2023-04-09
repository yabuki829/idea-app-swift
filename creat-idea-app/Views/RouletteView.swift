//
//  RouletteView.swift
//  creat-idea-app
//
//  Created by 薮木翔大 on 2023/04/09.
//

import Foundation
import UIKit
class RouletteView:UIView, CAAnimationDelegate {
    let textLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 24)
        label.textAlignment = .center
        return label
    }()
    var isStart = false
    var count = 3
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(textLabel)
        textLabel.constraints(top: topAnchor, paddingTop: 0,
                              left: leftAnchor, paddingLeft: 0,
                              right:rightAnchor, paddingRight: 0,
                              bottom: bottomAnchor, paddingBottom: 0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setRouletteText(text:String){
        textLabel.text = text
    }
    
    func start(){
        
        let animation = CABasicAnimation(keyPath: "transform.rotation.x")
        animation.toValue = NSNumber(value: Double.pi * Double(count * 2))
        animation.duration = CFTimeInterval(count / 2)
        animation.delegate = self
      
        // アニメーションをルーレットのViewに追加
        self.layer.add(animation, forKey: "rotationAnimation")
        
    }
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        self.layer.removeAllAnimations()
        let randomIndex = Int(arc4random_uniform(UInt32(word.count)))
        setRouletteText(text: word[randomIndex])
    }
}


