//
//  ChatUserViewController.swift
//  TabChat
//
//  Created by Nah on 10/12/17.
//  Copyright © 2017 Nah. All rights reserved.
//

import Foundation
import UIKit

class ChatUserViewController: UIViewController {
    
    private let contentView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
    func initView() {
        view.backgroundColor = .clear
        view.isOpaque = false
        
        contentView.frame = CGRect(x: 24, y: 146, width: 327, height: 375)
        contentView.backgroundColor = UIColor.purple
        contentView.layer.cornerRadius = 8
        contentView.layer.masksToBounds = true
        view.addSubview(contentView)
        
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 327, height: 44))
        titleLabel.textAlignment = .center
        titleLabel.text = "Chat User"
        titleLabel.backgroundColor = UIColor.lightGray
        contentView.addSubview(titleLabel)
        
        let closeButton = UIButton(frame: CGRect(x: 10, y: 10, width: 50, height: 30))
        closeButton.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        closeButton.setTitle("Back", for: .normal)
        contentView.addSubview(closeButton)
        closeButton.addTarget(self, action: #selector(ChatUserViewController.popView), for: .touchUpInside)
        
        let dismissButton = UIButton(frame: CGRect(x: contentView.bounds.width - 60, y: 10, width: 50, height: 30))
        dismissButton.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        dismissButton.setTitle("Dismiss", for: .normal)
        contentView.addSubview(dismissButton)
        dismissButton.addTarget(self, action: #selector(ChatUserViewController.dismissView), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
        
        UIView.animate(withDuration: 0.3) {
            self.contentView.alpha = 1
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        UIView.animate(withDuration: 0.3) {
            self.contentView.alpha = 0
        }
    }
    
    @objc func popView() {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func dismissView() {
        self.dismiss(animated: true, completion: nil)
    }
}
