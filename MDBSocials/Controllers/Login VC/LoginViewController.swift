//
//  ViewController.swift
//  MDBSocials
//
//  Created by Andrés Medrano on 9/21/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//

import UIKit
import FirebaseAuth

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
    var returnButton : UIButton! 
    
 
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
        displayReturnButton()
        addFieldListeners()
        
    }
    
    @objc func loginButtonClicked() {
        
        guard let username = usernameTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        // signing in with email right now instead of password until I send the username to firebase
        Auth.auth().signIn(withEmail: username, password: password) { user, error in
            if error == nil && user != nil {
                self.dismiss(animated: false, completion: nil)
            } else {
                print("ERROR: \(error!.localizedDescription)")
                self.displayAlert(title: "Error", message: error!.localizedDescription)
            }
            
        }
    }
    
    @objc func returnButtonClicked() {
        self.dismiss(animated: false, completion: nil)
    }
    
    @objc func textFieldChanged(_ target:UITextField) {
        let username = usernameTextField.text
        let password = passwordTextField.text
        let formFilled = username != nil && username != "" && password != nil && password != ""
        setLoginButton(enabled: formFilled)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        get {
            return .lightContent
        }
    }
}

