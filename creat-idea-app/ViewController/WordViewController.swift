import UIKit

class WordViewController: UIViewController {
    var labels = [UILabel]()
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        for i in 0..<word.count{
            let label = UILabel()
            view.addSubview(label)
            label.text = word[i]
            label.textColor = .white
            label.textAlignment = .left
            label.frame = CGRect(x: CGFloat.random(in: -50..<(view.bounds.width-20)), y: -50, width: view.frame.width, height: 20)
            // アニメーション実行中の配列
            Timer.scheduledTimer(withTimeInterval: TimeInterval.random(in: 5...100.0), repeats: false) { (_) in
                // 1秒後に実行されるコード
                self.startAnimationLabel(label)
            }
        }
        
        
    }


    func startAnimationLabel(_ label: UILabel) {
        UIView.animate(withDuration: 8.0, delay: 0.0, options: .curveEaseInOut, animations: {
            label.frame.origin.y = self.view.frame.height + 100
        }, completion: { (_) in
            label.frame.origin.y = -50
            self.startAnimationLabel(label)
        })
    }

   

    
}
