//
//  SignUpVC-Setup.swift
//  MDBSocials
//
//  Created by Andrés Medrano on 9/22/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//

import UIKit

extension SignUpViewController : UITextFieldDelegate
{
    func displaySubtitle()
    {
        // SUBTITLE
        signupLabel = UILabel(frame: CGRect(x: view.frame.width / 8, y: 1.25 * view.frame.height / 10 , width: view.frame.width, height: 50))
        signupLabel.text = "SIGN UP"
        signupLabel.textColor = UIColor.white
        signupLabel.font = UIFont.boldSystemFont(ofSize: 30)
        self.view.addSubview(signupLabel)
    }

    func displayFullNameField()
    {
        // FULL NAME FIELD
        fullnameTextField = UITextField(frame: CGRect(x: view.frame.width / 8, y: 2.5 * view.frame.height / 10, width: 6 * view.frame.width / 8, height: 40))
        fullnameTextField.placeholder = "Full Name"
        let spacerView1 = UIView(frame:CGRect(x:0, y:0, width:10, height:10))
        fullnameTextField.leftViewMode = UITextFieldViewMode.always
        fullnameTextField.leftView = spacerView1
        fullnameTextField.backgroundColor = UIColor.white
        view.addSubview(fullnameTextField)
    }

    func displayUsernameField()
    {
        // USERNAME FIELD
        usernameTextField = UITextField(frame: CGRect(x: view.frame.width / 8, y: 4 * view.frame.height / 10, width: 6 * view.frame.width / 8, height: 40))
        usernameTextField.placeholder = "Username"
        let spacerView2 = UIView(frame:CGRect(x:0, y:0, width:10, height:10))
        usernameTextField.leftViewMode = UITextFieldViewMode.always
        usernameTextField.leftView = spacerView2
        usernameTextField.backgroundColor = UIColor.white
        view.addSubview(usernameTextField)
    }
    
    func displayEmailField()
    {
        // EMAIL FIELD
        emailTextField = UITextField(frame: CGRect(x: view.frame.width / 8, y: 5.5 * view.frame.height / 10, width: 6 * view.frame.width / 8, height: 40))
        emailTextField.placeholder = "Email"
        let spacerView3 = UIView(frame:CGRect(x:0, y:0, width:10, height:10))
        emailTextField.leftViewMode = UITextFieldViewMode.always
        emailTextField.leftView = spacerView3
        emailTextField.backgroundColor = UIColor.white
        view.addSubview(emailTextField)
    }

    func displayPasswordField()
    {
        // PASSWORD FIELD
        passwordTextField = UITextField(frame: CGRect(x: view.frame.width / 8, y: 7 * view.frame.height / 10, width: 6 * view.frame.width / 8, height: 40))
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        let spacerView4 = UIView(frame:CGRect(x:0, y:0, width:10, height:10))
        passwordTextField.leftViewMode = UITextFieldViewMode.always
        passwordTextField.leftView = spacerView4
        passwordTextField.backgroundColor = UIColor.white
        view.addSubview(passwordTextField)
    }

    func displaySignupButton()
    {
        
        signupButton = RoundedWhiteButton(frame: CGRect(x: view.center.x / 2, y: 8.35 * view.frame.height / 10, width: 200, height: 50))
        signupButton.setTitleColor(secondaryColor, for: .normal)
        signupButton.setTitle("Sign Up", for: .normal)
        signupButton.titleLabel?.font = UIFont.systemFont(ofSize: 18.0, weight: UIFont.Weight.bold)
        signupButton.highlightedColor = UIColor(white: 1.0, alpha: 1.0)
        signupButton.defaultColor = UIColor.white
        signupButton.addTarget(self, action: #selector(signupButtonClicked), for: .touchUpInside)
        signupButton.alpha = 0.5
        view.addSubview(signupButton)
        setSignupButton(enabled: true)
        
    }
    
    func setSignupButton(enabled:Bool) {
        if enabled {
            signupButton.alpha = 1.0
            signupButton.isEnabled = true
        } else {
            signupButton.alpha = 0.5
            signupButton.isEnabled = false
        }
    }
    
    func addFieldListeners()
    {
        
        fullnameTextField.delegate = self
        emailTextField.delegate = self
        usernameTextField.delegate = self
        passwordTextField.delegate = self
        
        fullnameTextField.addTarget(self, action: #selector(textFieldChanged), for: .editingChanged)
        emailTextField.addTarget(self, action: #selector(textFieldChanged), for: .editingChanged)
        usernameTextField.addTarget(self, action: #selector(textFieldChanged), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(textFieldChanged), for: .editingChanged)
        
    }

    
}
