//
//  LoginController.swift
//  chat
//
//  Created by とん航 on 2/3/17.
//  Copyright © 2017 とん航. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    let inputsContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        return view
    }()
    
    let loginRegisterButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(r:80 , g:101, b:161)
        button.setTitle("Register",for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        return button
    }()
    
    let nameTextField: UITextField = {
        let tf=UITextField()
        tf.placeholder="Name"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let nameSeparatorView: UIView = {
        let line = UIView()
        line.backgroundColor = UIColor(r:0,g:0,b:0)
        line.translatesAutoresizingMaskIntoConstraints=false
        return line
    }()
    
    let passwordTextField: UITextField = {
        let tf=UITextField()
        tf.placeholder="Password"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.isSecureTextEntry = true
        return tf
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(r:61, g:91, b:151)
        
        view.addSubview(inputsContainerView)
        view.addSubview(loginRegisterButton)
        
        setupInputsContainerView()
        setupLoginRegisterButton()
        
    }

    func setupInputsContainerView(){
        //need x, y, width, height constraints
        inputsContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        inputsContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive=true
        inputsContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant:-24 ).isActive=true
        inputsContainerView.heightAnchor.constraint(equalToConstant: 150).isActive=true

        inputsContainerView.addSubview(nameTextField)
        inputsContainerView.addSubview(nameSeparatorView)
        inputsContainerView.addSubview(passwordTextField)
        
        //need x, y, width, height constraints
        nameTextField.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor,constant: 12).isActive=true
        nameTextField.topAnchor.constraint(equalTo: inputsContainerView.topAnchor).isActive=true
        nameTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive=true
        nameTextField.heightAnchor.constraint(equalTo: inputsContainerView.heightAnchor, multiplier:1/2).isActive=true
        
        //need x, y, width, height constraints
        nameSeparatorView.rightAnchor.constraint(equalTo: inputsContainerView.rightAnchor).isActive=true
        nameSeparatorView.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive=true
        nameSeparatorView.widthAnchor.constraint(equalTo: nameTextField.widthAnchor).isActive=true
        nameSeparatorView.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        //need x, y, width, height constraints
        passwordTextField.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor,constant:12).isActive=true
        passwordTextField.topAnchor.constraint(equalTo: nameSeparatorView.topAnchor).isActive=true
        passwordTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive=true
        passwordTextField.heightAnchor.constraint(equalTo: inputsContainerView.heightAnchor, multiplier:1/2).isActive=true
        
        
    }
    
    func setupLoginRegisterButton(){
        //need x, y, width, height constraints
        loginRegisterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        loginRegisterButton.topAnchor.constraint(equalTo: inputsContainerView.bottomAnchor, constant:12).isActive=true
        loginRegisterButton.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive=true
        loginRegisterButton.heightAnchor.constraint(equalToConstant: 30).isActive=true
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
