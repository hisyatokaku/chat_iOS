//
//  ViewController.swift
//  chat
//
//  Created by とん航 on 2/3/17.
//  Copyright © 2017 とん航. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UITableViewController {
    //UITableViewController means do not use story board.
    //けい線が引かれる

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout",
                                                           style: .plain, target: self, action: #selector(handleLogout))
    }
    
    func handleLogout(){
        let logincontroller = LoginController()
        present(logincontroller, animated: true, completion:nil)
    }


}

