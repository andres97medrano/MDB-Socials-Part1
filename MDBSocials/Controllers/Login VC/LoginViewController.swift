//
//  ViewController.swift
//  MDBSocials
//
//  Created by Andrés Medrano on 9/21/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController
{
    // ===================================== USER-INTERFACE =====================================
    
    // LABELS
    var loginLabel : UILabel!
    
    // TEXT FIELDS
    var usernameTextField : UITextField!
    var passwordTextField : UITextField!
    
    // BUTTONS
    var loginButton : RoundedWhiteButton!
    
    
 
    // ===========================================================================================

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Set-up the Screen
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        
        displaySubtitle()
        displayUsernameField()
        displayPasswordField()
        displayLoginButton()
        addFieldListeners()
        
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        
    }
    
    @objc func loginButtonClicked()
    {
        // CHECK IF USER HAS VALID USERNAME/PASSWORD
        self.dismiss(animated: false, completion: nil)
        performSegue(withIdentifier: "toFeedScreenFromLogin", sender: self)
    }
    
    @objc func textFieldChanged(_ target:UITextField) {
        let username = usernameTextField.text
        let password = passwordTextField.text
        let formFilled = username != nil && username != "" && password != nil && password != ""
        setLoginButton(enabled: formFilled)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        // data to send
    }

}

