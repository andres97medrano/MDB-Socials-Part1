//
//  MainVC-Setup.swift
//  MDBSocials
//
//  Created by Andrés Medrano on 9/23/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//

import UIKit

extension MainViewController
{
    func displayMDBLogo()
    {
        mdbImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 175, height: 175))
        mdbImageView.center = CGPoint(x: view.frame.width / 2, y: 2.5 * view.frame.height / 10)
        mdbImageView.image = UIImage(named: "mdblogo")
        mdbImageView.contentMode = .scaleAspectFit
        self.view.addSubview(mdbImageView)
    }
    
    func displaySubtitle()
    {
        // LOG IN SUBTITLE
        mdbSocialsLabel = UILabel(frame: CGRect(x: 0, y: 3 * view.frame.height / 10 , width: view.frame.width, height: 50))
        mdbSocialsLabel.textAlignment = .center
        mdbSocialsLabel.text = "SOCIALS"
        mdbSocialsLabel.textColor = UIColor.white
        mdbSocialsLabel.font = UIFont.boldSystemFont(ofSize: 20)
        self.view.addSubview(mdbSocialsLabel)
    }
    
    func displayLoginButton()
    {
        
        loginButton = RoundedWhiteButton(frame: CGRect(x: view.center.x / 2, y: 6.5 * view.frame.height / 10, width: 200, height: 50))
        loginButton.setTitleColor(secondaryColor, for: .normal)
        loginButton.setTitle("Log In", for: .normal)
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 18.0, weight: UIFont.Weight.bold)
        loginButton.highlightedColor = UIColor(white: 1.0, alpha: 1.0)
        loginButton.defaultColor = UIColor.white
        loginButton.addTarget(self, action: #selector(loginButtonClicked), for: .touchUpInside)
        loginButton.alpha = 0.5
        view.addSubview(loginButton)
        setLoginButton(enabled: true)
    }
    
    func displaySignupButton()
    {

        signupButton = RoundedWhiteButton(frame: CGRect(x: view.center.x / 2, y: 7.5 * view.frame.height / 10, width: 200, height: 50))
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
    
    func setLoginButton(enabled:Bool) {
        if enabled {
            loginButton.alpha = 1.0
            loginButton.isEnabled = true
        } else {
            loginButton.alpha = 0.5
            loginButton.isEnabled = false
        }
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

}
