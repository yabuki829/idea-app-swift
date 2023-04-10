//
//  MainTabbarController.swift
//  creat-idea-app
//
//  Created by 薮木翔大 on 2023/04/10.
//

import Foundation
import UIKit
class MainTabbarController: UITabBarController {
    override func viewDidLoad() {
        setupTab()
    }
    func setupTab() {
        tabBar.backgroundColor = .white
        let firstViewController = ViewController()
        firstViewController.tabBarItem = UITabBarItem(title: "アイデア", image: .none, tag: 0)
        let secondViewController = WordViewController()
        secondViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)

        viewControllers = [firstViewController, secondViewController]
    }
}
