//
//  LoginVC-Setup.swift
//  MDBSocials
//
//  Created by Andrés Medrano on 9/22/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//

import UIKit

extension LoginViewController : UITextFieldDelegate
{
    func displaySubtitle()
    {
        // SUBTITLE
        loginLabel = UILabel(frame: CGRect(x: view.frame.width / 8, y: 1.25 * view.frame.height / 10 , width: view.frame.width, height: 50))
        // signupLabel.textAlignment = .center
        loginLabel.text = "LOG IN"
        loginLabel.textColor = UIColor.white
        loginLabel.font = UIFont.boldSystemFont(ofSize: 30)
        self.view.addSubview(loginLabel)
    }

    func displayUsernameField()
    {
        // USERNAME FIELD
        usernameTextField = UITextField(frame: CGRect(x: view.frame.width / 8, y: 4 * view.frame.height / 10, width: 6 * view.frame.width / 8, height: 40))
        usernameTextField.placeholder = "Username"
        let spacerView1 = UIView(frame:CGRect(x:0, y:0, width:10, height:10))
        usernameTextField.leftViewMode = UITextFieldViewMode.always
        usernameTextField.leftView = spacerView1
        usernameTextField.backgroundColor = UIColor.white
        view.addSubview(usernameTextField)
    }
    
    func displayPasswordField()
    {
        // PASSWORD FIELD
        passwordTextField = UITextField(frame: CGRect(x: view.frame.width / 8, y: 5 * view.frame.height / 10, width: 6 * view.frame.width / 8, height: 40))
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        let spacerView2 = UIView(frame:CGRect(x:0, y:0, width:10, height:10))
        passwordTextField.leftViewMode = UITextFieldViewMode.always
        passwordTextField.leftView = spacerView2
        passwordTextField.backgroundColor = UIColor.white
        view.addSubview(passwordTextField)
    }

    func displayLoginButton()
    {
        // LOGIN BUTTON
//        loginButton = UIButton(frame: CGRect(x: 0, y: 7.75 * view.frame.height / 10, width: view.frame.width, height: 50))
//        loginButton.setTitle("LOG IN", for: .normal)
//        loginButton.backgroundColor = .red
//        loginButton.addTarget(self, action: #selector(loginButtonClicked), for: .touchUpInside)
//        self.view.addSubview(loginButton)
        
        loginButton = RoundedWhiteButton(frame: CGRect(x: view.center.x / 2, y: 7.75 * view.frame.height / 10, width: 200, height: 50))
        loginButton.setTitleColor(secondaryColor, for: .normal)
        loginButton.setTitle("Log In", for: .normal)
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 18.0, weight: UIFont.Weight.bold)
        loginButton.highlightedColor = UIColor(white: 1.0, alpha: 1.0)
        loginButton.defaultColor = UIColor.white
        loginButton.addTarget(self, action: #selector(loginButtonClicked), for: .touchUpInside)
        loginButton.alpha = 0.5
        view.addSubview(loginButton)
        setLoginButton(enabled: false)
    }
    

    func setLoginButton(enabled:Bool) {
        if enabled {
            loginButton.alpha = 1.0
            loginButton.isEnabled = true
        } else {
            loginButton.alpha = 0.5
            loginButton.isEnabled = false
        }
    }
    


}