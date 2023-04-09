import UIKit

class WordViewController: UIViewController {

//    let word = ["Word1", "Word2", "Word3", "Word4", "Word5"] // 流す単語の配列
    var timers: [Timer] = [] // アニメーションを制御するタイマーの配列
    var labels: [UILabel] = [] // UILabelの配列

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // ラベルの位置と単語を初期設定
        for i in 0..<word.count {
            let label = UILabel()
            view.addSubview(label)
            label.textColor = .white
            label.textAlignment = .left
            label.frame = CGRect(x: CGFloat.random(in: -50..<view.bounds.width-20), y: -50, width: view.frame.width , height: 20) // ランダムな位置に配置
            label.text = word[i]
            labels.append(label)
        }

        startAnimation()
    }

    func startAnimation() {
        for i in 0..<labels.count {
            let label = labels[i]
            let timer = Timer.scheduledTimer(withTimeInterval: TimeInterval.random(in: 0.1...10.0), repeats: true) { [weak self] (_) in
                self?.animateLabel(label) // ランダムなタイミングでアニメーションを開始
            }
//            timers.append(timer)
        }
    }

    func animateLabel(_ label: UILabel) {

        // CABasicAnimationを使ってラベルをアニメーションさせる
        let animation = CABasicAnimation(keyPath: "position")
        animation.fromValue = NSValue(cgPoint: label.center)
        animation.toValue = NSValue(cgPoint: CGPoint(x: label.center.x, y:view.frame.height))
        animation.duration = 5.0
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        animation.isRemovedOnCompletion = false

        label.layer.add(animation, forKey: "positionAnimation") // アニメーションを追加
    }

    
}
