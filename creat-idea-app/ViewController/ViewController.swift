//
//  ViewController.swift
//  creat-idea-app
//
//  Created by 薮木翔大 on 2023/04/09.
//

import UIKit

class ViewController: UIViewController {
    
    
    let stackView:RouletteStackView = {
        let sv = RouletteStackView()
        sv.axis = .horizontal
        sv.distribution = .fillEqually
        sv.spacing = 10
        return sv
    }()
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "悩む人")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .link
        
        settingRouletteView()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapRouletteButton(_:)))
        imageView.addGestureRecognizer(tapGesture)
        imageView.isUserInteractionEnabled = true
       
    }
    @objc func tapRouletteButton(_ sender: UITapGestureRecognizer){
        stackView.start()
    }
    // ルーレットの設定
    func settingRouletteView(){
        view.addSubview(stackView)
        stackView.constraints(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 10,
                              left: view.leftAnchor, paddingLeft: 10,
                              right: view.rightAnchor, paddingRight: 10,
                              height: view.frame.width / 2)
        view.addSubview(imageView)
        imageView.constraints(top: stackView.bottomAnchor, paddingTop: 10, height: view.frame.width - 60 , width: view.frame.width - 60)
        imageView.centerX(inView: view)
        stackView.start()
        
    }
    
    
    
    

    

}



