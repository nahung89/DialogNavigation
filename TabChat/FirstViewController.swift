//
//  FirstViewController.swift
//  TabChat
//
//  Created by Nah on 10/12/17.
//  Copyright © 2017 Nah. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tapChat() {
        let controller = ChatViewController()
        let navigation = UINavigationController(rootViewController: controller)
        
        navigation.modalTransitionStyle = .crossDissolve
        navigation.modalPresentationStyle = .overCurrentContext
        navigation.view.backgroundColor = UIColor(white: 0.05, alpha: 0.7)
        navigation.view.isOpaque = false
        
        tabBarController?.present(navigation, animated: true, completion: nil)
        
    }

}

