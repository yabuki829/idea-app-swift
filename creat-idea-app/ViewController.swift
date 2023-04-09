//
//  ViewController.swift
//  creat-idea-app
//
//  Created by 薮木翔大 on 2023/04/09.
//

import UIKit

class ViewController: UIViewController {
    var rouletteView: RouletteView = {
        let view = RouletteView()
        view.backgroundColor = .white
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(rouletteView)
        rouletteView.constraints(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 0,
                                 left: view.leftAnchor, paddingLeft: 0,
                                 right: view.rightAnchor, paddingRight: 0,
                                 bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: 0)
        rouletteView.start()
    }

    

}



