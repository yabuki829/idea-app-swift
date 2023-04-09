//
//  RouletteView.swift
//  creat-idea-app
//
//  Created by 薮木翔大 on 2023/04/09.
//

import Foundation
import UIKit
class RouletteView:UIView {
    let textLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24)
        return label
    }()
    var isStart = false
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemGray5
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setRouletteText(text:String){
        textLabel.text = text
    }
    
    func start(){

    }
    func stop(){
        
    }
}


