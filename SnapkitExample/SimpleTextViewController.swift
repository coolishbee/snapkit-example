//
//  SimpleTextViewController.swift
//  SnapkitExample
//
//  Created by coolishbee on 2022/02/24.
//

import UIKit

class SimpleTextViewController: UIViewController {
    
    var didSetupConstraints = false
    
    let textView: UITextView = {
        let textView = UITextView()
        textView.backgroundColor = .secondarySystemBackground
        textView.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
        textView.textColor = .black
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        view.addSubview(textView)
        
        view.setNeedsUpdateConstraints()
    }
    
    override func updateViewConstraints() {
        
        if (!didSetupConstraints) {
            
            textView.snp.makeConstraints { make in
                make.edges.equalTo(view).inset(UIEdgeInsets.zero)
//                make.top.equalTo(view).offset(5)
//                make.leading.equalTo(view).offset(5)
//                make.trailing.equalTo(view).offset(5)
//                make.bottom.equalTo(view).offset(5)
            }
            
            didSetupConstraints = true
        }
        
        super.updateViewConstraints()
    }
}
