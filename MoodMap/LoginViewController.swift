//
//  LoginViewController.swift
//  MoodMap
//
//  Created by Tomas Sidenfaden on 3/7/18.
//  Copyright © 2018 Tomas Sidenfaden. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userImage.layer.cornerRadius = userImage.frame.height/2
        userImage.layer.masksToBounds = true
        userImage.layer.borderWidth = 0
        
    }
    
    
    
}

extension UIImageView{
    
    func asCircle(){
        self.layer.cornerRadius = self.frame.width / 2;
        self.layer.masksToBounds = true
    }
    
}
