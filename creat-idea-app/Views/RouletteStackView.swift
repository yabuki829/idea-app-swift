//
//  RouletteStackView.swift
//  creat-idea-app
//
//  Created by 薮木翔大 on 2023/04/09.
//

import Foundation
import UIKit
class RouletteStackView:UIStackView {
    var rouletteView_A: RouletteView = {
        let view = RouletteView()
        view.backgroundColor = .white
        return view
    }()
    var rouletteView_B: RouletteView = {
        let view = RouletteView()
        view.backgroundColor = .white
        return view
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setting()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setting(){
        self.addArrangedSubview(rouletteView_A)
        self.addArrangedSubview(rouletteView_B)
    }
    func start(){
        rouletteView_A.start()
        rouletteView_B.start()
    }
    func start_A(){
        rouletteView_A.start()
    }
    func start_B(){
        rouletteView_B.start()
    }
}
