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
    
    let rouletteButton:UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .link
        
        settingRouletteView()
        view.addSubview(rouletteButton)
        rouletteButton.centerX(inView: view)
        rouletteButton.constraints( bottom: view.bottomAnchor, paddingBottom: 40,
                                    height: view.frame.width / 5, width: view.frame.width / 3)
        rouletteButton.addTarget(self, action: #selector(tapRouletteButton), for: .touchDown)
        
    }
    @objc func tapRouletteButton(){
        stackView.start()
    }
    // ルーレットの設定
    func settingRouletteView(){
        view.addSubview(stackView)
        stackView.constraints(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 10,
                              left: view.leftAnchor, paddingLeft: 10,
                              right: view.rightAnchor, paddingRight: 10,
                              height: view.frame.width / 2)
        stackView.start()
        
    }
    
    
    
    

    

}



