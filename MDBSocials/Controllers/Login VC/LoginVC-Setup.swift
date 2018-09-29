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
        loginLabel = UILabel(frame: CGRect(x: view.frame.width / 8, y: 1.25 * view.frame.height / 10 , width: view.frame.width, height: 50))
        loginLabel.text = "LOG IN"
        loginLabel.textColor = UIColor.white
        loginLabel.font = UIFont.boldSystemFont(ofSize: 30)
        self.view.addSubview(loginLabel)
    }

    func displayUsernameField()
    {
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
    
//    logoutButton = UIButton(frame: CGRect(x: 0, y: view.frame.height / 10, width: view.frame.width, height: 50))
//    logoutButton.setTitle("LOG OUT", for: .normal)
//    logoutButton.backgroundColor = .red
//    logoutButton.addTarget(self, action: #selector(logoutButtonClicked), for: .touchUpInside)
//    view.addSubview(logoutButton)
    
//    mdbImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 175, height: 175))
//    mdbImageView.center = CGPoint(x: view.frame.width / 2, y: 2.5 * view.frame.height / 10)
//    mdbImageView.image = UIImage(named: "mdblogo")
//    mdbImageView.contentMode = .scaleAspectFit
//    self.view.addSubview(mdbImageView)
    
    func displayReturnButton()
    {
        returnButton = UIButton(type: .custom)
        returnButton = UIButton(frame: CGRect(x: 10, y: 30, width: 40, height: 40))
        returnButton.setImage(UIImage(named: "backIcon"), for: .normal)
        returnButton.addTarget(self, action: #selector(returnButtonClicked), for: .touchUpInside)
        view.addSubview(returnButton)
        
    }
    
    func addFieldListeners() {
        
        usernameTextField.delegate = self
        passwordTextField.delegate = self
        
        usernameTextField.addTarget(self, action: #selector(textFieldChanged), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(textFieldChanged), for: .editingChanged)

    }
    
    func displayAlert(title: String, message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(defaultAction)
        self.present(alert, animated: true, completion: nil)
        
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
