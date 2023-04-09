//
//  ViewController.swift
//  creat-idea-app
//
//  Created by 薮木翔大 on 2023/04/09.
//

import UIKit

class VerticalRouletteViewController: UIViewController, CAAnimationDelegate {
    var rouletteView: UIView! // ルーレットのView
    var rouletteLabel: UILabel! // ルーレットのラベル
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
 
        startVerticalRouletteAnimation()
    }

    func startVerticalRouletteAnimation() {
        // 回転アニメーションを作成
        let animation = CABasicAnimation(keyPath: "transform.rotation.x")
        animation.toValue = NSNumber(value: Double.pi * 4) // 2回転
        animation.duration = 0.5 // アニメーションの時間
        animation.delegate = self // delegateを設定

        // アニメーションをルーレットのViewに追加
        rouletteView.layer.add(animation, forKey: "rotationAnimation")
    }

    // アニメーション終了時の処理
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        // アニメーションを停止する
        rouletteView.layer.removeAllAnimations()

        let randomIndex = Int(arc4random_uniform(UInt32(word.count)))
        rouletteLabel.text = word[randomIndex]
    }
    
    
}



