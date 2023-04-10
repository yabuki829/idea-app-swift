import UIKit

class WordViewController: UIViewController {
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "傘をさす人")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        imageView.constraints(bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: 10, height: view.frame.width / 2 , width: view.frame.width / 2)
        imageView.centerX(inView: view)
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        for i in 0..<word.count{
            let label = UILabel()
            view.addSubview(label)
            label.layer.zPosition = -1
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
