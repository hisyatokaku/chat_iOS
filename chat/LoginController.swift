//
//  LoginController.swift
//  chat
//
//  Created by とん航 on 2/3/17.
//  Copyright © 2017 とん航. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(r:61, g:91, b:151)
        let inputsContainerView = UIView()
        inputsContainerView.backgroundColor = UIColor.white
        
        view.addSubview(inputsContainerView)
        
        inputsContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        inputsContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        inputsContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant:-24 )
        inputsContainerView.heightAnchor.constraint(equalToConstant: 150)
        
        
        //need x, y, width, height constraints
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
}

extension UIColor{
    convenience init(r:CGFloat,g:CGFloat,b:CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}
